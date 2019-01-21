import Foundation

extension Platform.Website: Composable {
    // sourcery:inline:Platform.Website.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Platform.Website>) throws -> [CodingKey] {
        switch keyPath {
        case \Platform.Website.identifier: return [CodingKeys.identifier]
        case \Platform.Website.trusted: return [CodingKeys.trusted]
        case \Platform.Website.category: return [CodingKeys.category]
        case \Platform.Website.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
