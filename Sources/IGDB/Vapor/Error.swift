import Foundation

public enum Error: Swift.Error {
    case unexpectedKeyPath(AnyKeyPath)
    case malformedBaseUrl(String)
    case invalidResponseData
    case unknownHash
}
