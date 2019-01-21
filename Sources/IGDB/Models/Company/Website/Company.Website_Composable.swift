import Foundation

extension Company.Website: Composable {
    // sourcery:inline:Company.Website.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \Company.Website.identifier: return [CodingKeys.identifier]
        case \Company.Website.trusted: return [CodingKeys.trusted]
        case \Company.Website.category: return [CodingKeys.category]
        case \Company.Website.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
