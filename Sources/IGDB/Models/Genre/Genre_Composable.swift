import Foundation

extension Genre: Composable {
    // sourcery:inline:Genre.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Genre.identifier: return [CodingKeys.identifier]
        case \Genre.createdAt: return [CodingKeys.createdAt]
        case \Genre.updatedAt: return [CodingKeys.updatedAt]
        case \Genre.name: return [CodingKeys.name]
        case \Genre.slug: return [CodingKeys.slug]
        case \Genre.url: return [CodingKeys.url]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
