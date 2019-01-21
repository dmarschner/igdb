import Foundation

extension Collection: Composable {
    // sourcery:inline:Collection.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \Collection.identifier: return [CodingKeys.identifier]
        case \Collection.createdAt: return [CodingKeys.createdAt]
        case \Collection.updatedAt: return [CodingKeys.updatedAt]
        case \Collection.name: return [CodingKeys.name]
        case \Collection.slug: return [CodingKeys.slug]
        case \Collection.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
