import Foundation

extension Theme: Composable {
    // sourcery:inline:Theme.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Theme.identifier: return [CodingKeys.identifier]
        case \Theme.createdAt: return [CodingKeys.createdAt]
        case \Theme.updatedAt: return [CodingKeys.updatedAt]
        case \Theme.name: return [CodingKeys.name]
        case \Theme.slug: return [CodingKeys.slug]
        case \Theme.url: return [CodingKeys.url]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
