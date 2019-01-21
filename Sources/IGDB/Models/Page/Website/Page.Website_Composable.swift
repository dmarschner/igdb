import Foundation

extension Page.Website: Composable {
    // sourcery:inline:Page.Website.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Page.Website>) throws -> [CodingKey] {
        switch keyPath {
        case \Page.Website.identifier: return [CodingKeys.identifier]
        case \Page.Website.trusted: return [CodingKeys.trusted]
        case \Page.Website.category: return [CodingKeys.category]
        case \Page.Website.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
