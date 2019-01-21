import Foundation

extension GameMode: Composable {
    // sourcery:inline:GameMode.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \GameMode.identifier: return [CodingKeys.identifier]
        case \GameMode.createdAt: return [CodingKeys.createdAt]
        case \GameMode.updatedAt: return [CodingKeys.updatedAt]
        case \GameMode.name: return [CodingKeys.name]
        case \GameMode.slug: return [CodingKeys.slug]
        case \GameMode.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
