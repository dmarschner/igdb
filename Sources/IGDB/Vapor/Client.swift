import Service

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

    /// The headers to send with every request
    private let additionalHeaders: [String: String]

    /// The JSON decoder used to decode requested entities
    private let decoder: JSONDecoder

    /// Initializes a new instance of `Self`.
    ///
    /// - Parameters:
    ///   - key: The IGDB API key to use for each request.
    ///   - container: The container to spawn new promises
    /// - Throws: An `Error` if `baseUrl` is malformed.
    public init(key: String, on container: Container, baseUrl: String = "https://api-v3.igdb.com") throws {

        // Make sure the input is valid
        guard let url = URL(string: baseUrl) else {
            throw Error.malformedBaseUrl(baseUrl)
        }

        // Backup required properties
        self.baseUrl = url
        self.container = container
        self.urlSession = .init(configuration: .default)
        self.additionalHeaders = [
            "accept": "application/json",
            "user-key": key
        ]

        // Prepare the necessary decoder
        self.decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
    }
}

extension Client {

    /// Sends a POST request against the Endpoint of given Query's Entity, with given query parameters as body data.
    ///
    /// - Parameter query: The query to send against the IGDB API
    /// - Returns: The Future holding the resulting entities of the request
    /// - Throws: An Error if request is invalid or networking fails
    public func send<E>(query: Query<E> = .init()) throws -> Future<[E]> where E: Identifiable & Composable & Decodable {
        let promise = container.eventLoop.newPromise([E].self) // The request/response promise
        var request = URLRequest(url: baseUrl.appendingPathComponent(E.requestPath)) // The request against the entity endpoint
        request.httpBody = query.build().data(using: .utf8, allowLossyConversion: false) // The query attached as body data
        request.httpMethod = "POST" // POST, to attach body data
        request.allHTTPHeaderFields = additionalHeaders
        urlSession.dataTask(with: request) { (data, _, error) in
            if let error = error { // Fail directly on an error
                return promise.fail(error: error)
            }
            guard let data = data else { // Fail if no data to decode
                return promise.fail(error: Error.invalidResponseData)
            }
            do { // Try decoding, finish successfully on success and fail on error
                try promise.succeed(result: self.decoder.decode([E].self, from: data))
            } catch let error {
                promise.fail(error: error)
            }
        }.resume() // Send right away
        return promise.futureResult
    }
}
