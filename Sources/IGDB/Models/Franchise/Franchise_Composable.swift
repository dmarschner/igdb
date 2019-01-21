import Foundation

extension Franchise: Composable {
    // sourcery:inline:Franchise.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \Franchise.identifier: return [CodingKeys.identifier]
        case \Franchise.createdAt: return [CodingKeys.createdAt]
        case \Franchise.updatedAt: return [CodingKeys.updatedAt]
        case \Franchise.name: return [CodingKeys.name]
        case \Franchise.slug: return [CodingKeys.slug]
        case \Franchise.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
