import Service

// TODO: Extract error from endpoint and make it more Result<Success, Failure> based

// TODO: CODER NEEDS DATE DE-/ENCODING STRATEGY ADJUSTED
//let decoder = JSONDecoder()
//decoder.dateDecodingStrategy = .secondsSince1970
//let encoder = JSONEncoder()
//encoder.dateEncodingStrategy = .secondsSince1970


/// `Vapor.Service` wrapper around the IGDB API.
/// All [endpoint](https://api-docs.igdb.com/#endpoints) definitions may be requested.
///
/// Base path: [https://api-v3.igdb.com](https://api-v3.igdb.com)
///
/// In order to communicate with the server, you will have to send these headers.
///
///     | HTTP Header | Value            |
///     | ----------- | ---------------- |
///     | user-key    | <your-key>       |
///     | accept      | application/json |
///
/// # Common fields in responses
///
/// All the responses may contain the following fields in the result:
///
///     | Name       | Type                    | Mandatory | Comment    |
///     | ---------- | ----------------------- | --------- | ---------- |
///     | id         | unsigned 64-bit integer | +         |            |
///
/// - Important:
///
///     All unix epoch fields’ values are in seconds relative to 00:00:00 UTC on 1 January 1970.
public final class Client: Service {

    private var apikey: String

    /// See `Client`.
    public var container: Container

    /// The `FoundationClient` powering this client.
//    private let client: Client

    public init(key: String, on container: Container) throws {
//        self.client = try container.client()
        self.container = container
        self.apikey = key
    }

//    /// See `Client`.
//    public func send(_ req: Request) -> Future<Response> {
//        req.http.headers.add(name: .init("user-key"), value: apikey)
//        return client.send(req)
//    }
}
//
///// `Client` wrapper around `Foundation.URLSession`.
//public final class FoundationClient: Client, ServiceType {
//    /// See `ServiceType`.
//    public static var serviceSupports: [Any.Type] {
//        return [Client.self]
//    }
//
//    /// See `ServiceType`.
//    public static func makeService(for worker: Container) throws -> FoundationClient {
//        return .default(on: worker)
//    }
//
//    /// See `Client`.
//    public var container: Container
//
//    /// The `URLSession` powering this client.
//    private let urlSession: URLSession
//
//    /// Creates a new `FoundationClient`.
//    public init(_ urlSession: URLSession, on container: Container) {
//        self.urlSession = urlSession
//        self.container = container
//    }
//
//    /// Creates a `FoundationClient` with default settings.
//    public static func `default`(on container: Container) -> FoundationClient {
//        return .init(.init(configuration: .default), on: container)
//    }
//
//    /// See `Client`.
//    public func send(_ req: Request) -> Future<Response> {
//        let urlReq = req.http.convertToFoundationRequest()
//        let promise = req.eventLoop.newPromise(Response.self)
//        self.urlSession.dataTask(with: urlReq) { data, urlResponse, error in
//            if let error = error {
//                promise.fail(error: error)
//                return
//            }
//
//            guard let httpResponse = urlResponse as? HTTPURLResponse else {
//                let error = VaporError(identifier: "httpURLResponse", reason: "URLResponse was not a HTTPURLResponse.")
//                promise.fail(error: error)
//                return
//            }
//
//            let response = HTTPResponse.convertFromFoundationResponse(httpResponse, data: data, on: self.container)
//            promise.succeed(result: Response(http: response, using: self.container))
//            }.resume()
//        return promise.futureResult
//    }
//}
//
//// MARK: Private
//
//private extension HTTPRequest {
//    /// Converts an `HTTP.HTTPRequest` to `Foundation.URLRequest`
//    func convertToFoundationRequest() -> URLRequest {
//        let http = self
//        let body = http.body.data ?? Data()
//        var request = URLRequest(url: http.url)
//        request.httpMethod = "\(http.method)"
//        request.httpBody = body
//        http.headers.forEach { key, val in
//            request.addValue(val, forHTTPHeaderField: key.description)
//        }
//        return request
//    }
//}
//
//private extension HTTPResponse {
//    /// Creates an `HTTP.HTTPResponse` to `Foundation.URLResponse`
//    static func convertFromFoundationResponse(_ httpResponse: HTTPURLResponse, data: Data?, on worker: Worker) -> HTTPResponse {
//        var res = HTTPResponse(status: .init(statusCode: httpResponse.statusCode))
//        if let data = data {
//            res.body = HTTPBody(data: data)
//        }
//        for (key, value) in httpResponse.allHeaderFields {
//            res.headers.replaceOrAdd(name: "\(key)", value: "\(value)")
//        }
//        return res
//    }
//}
