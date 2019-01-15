import Service

// TODO: Make fields of Entities in Expander part of the parent fields (to make them usable in sort, included fields, excluded fields, ...)
// TODO: Filters actually support multiple values for one field, e.g. "where id = (4356,189,444);"

/// `Vapor.Service` wrapper around the IGDB API, allowing all of the
/// [endpoint](https://api-docs.igdb.com/#endpoints) definitions to be requested.
///
/// Base path: [https://api-v3.igdb.com](https://api-v3.igdb.com)
///
/// In order to communicate with the server, the client will have to send these headers.
///
///     | HTTP Header | Value            |
///     | ----------- | ---------------- |
///     | user-key    | <your-key>       |
///     | accept      | application/json |
///
/// The key must be provided at client initialization. The accept header is auto added on any request.
///
/// - Important:
///
///     All unix epoch fields’ values are in seconds relative to 00:00:00 UTC on 1 January 1970.
public final class Client: Service {

    /// The IGDB API base url
    private let baseUrl: URL

    /// The container to spawn new promises
    private let container: Container

    /// The `URLSession` powering this client.
    private let urlSession: URLSession

    /// The JSON decoder used to decode requested entities
    private let decoder: JSONDecoder

    /// <#Description#>
    ///
    /// - Parameters:
    ///   - key: <#key description#>
    ///   - container: <#container description#>
    /// - Throws: <#throws value description#>
    public init(key: String, on container: Container, baseUrl: String = "https://api-v3.igdb.com") throws {

        // Make sure the input is valid
        guard let url = URL(string: baseUrl) else {
            throw Error.malformedBaseUrl(baseUrl)
        }

        // Backup required properties
        self.baseUrl = url
        self.container = container
        self.urlSession = .init(configuration: .init())
        self.urlSession.configuration.httpAdditionalHeaders = [
            "accept": "application/json",
            "user-key" : key
        ]

        // Prepare the necessary decoder
        self.decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
    }
}

extension Client {

    /// Sends a request against Entity Endpoint of given Query
    ///
    /// - Parameter query: <#query description#>
    /// - Returns: <#return value description#>
    /// - Throws: <#throws value description#>
    public func request<E>(query: Query<E> = .init()) throws -> Future<E> where E: Entity & Composable & Filterable & Decodable {
        let promise = container.eventLoop.newPromise(E.self) // The request/response promise
        var request = URLRequest(url: baseUrl.appendingPathComponent(E.requestPath)) // The request against the entity endpoint
        request.httpBody = query.rawValue.data(using: .utf8, allowLossyConversion: false) // The query attached as body data
        request.httpMethod = "POST" // POST, to attach body data
        urlSession.dataTask(with: request) { (data, response, error) in
            if let error = error { // Fail directly on an error
                return promise.fail(error: error)
            }
            guard let data = data else { // Fail if no data to decode
                return promise.fail(error: Error.invalidResponseData)
            }
            do { // Try decoding, finish successfully on success and fail on error
                try promise.succeed(result: self.decoder.decode(E.self, from: data))
            } catch let error {
                promise.fail(error: error)
            }
        }.resume() // Send right away
        return promise.futureResult
    }
}
