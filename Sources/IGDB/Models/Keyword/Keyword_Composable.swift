import Foundation

extension Keyword: Composable {
    // sourcery:inline:Keyword.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Keyword>) throws -> [CodingKey] {
        switch keyPath {
        case \Keyword.identifier: return [CodingKeys.identifier]
        case \Keyword.createdAt: return [CodingKeys.createdAt]
        case \Keyword.updatedAt: return [CodingKeys.updatedAt]
        case \Keyword.name: return [CodingKeys.name]
        case \Keyword.slug: return [CodingKeys.slug]
        case \Keyword.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
