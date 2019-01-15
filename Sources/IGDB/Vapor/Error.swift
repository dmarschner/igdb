import Foundation

public enum Error: Swift.Error {
    case malformedBaseUrl(String)
    case invalidResponseData
    case unknownHash
}
