import Foundation

extension ReleaseDate: Composable {
    // sourcery:inline:ReleaseDate.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        if type(of: keyPath).rootType is Platform.Type {
            return try ReleaseDate.codingPath(for: \ReleaseDate.platform)
                + Platform.codingPath(for: keyPath)
        }

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \ReleaseDate.identifier: return [CodingKeys.identifier]
        case \ReleaseDate.createdAt: return [CodingKeys.createdAt]
        case \ReleaseDate.updatedAt: return [CodingKeys.updatedAt]
        case \ReleaseDate.category: return [CodingKeys.category]
        case \ReleaseDate.date: return [CodingKeys.date]
        case \ReleaseDate.game: return [CodingKeys.game]
        case \ReleaseDate.human: return [CodingKeys.human]
        case \ReleaseDate.platform: return [CodingKeys.platform]
        case \ReleaseDate.region: return [CodingKeys.region]
        case \ReleaseDate.month: return [CodingKeys.month]
        case \ReleaseDate.year: return [CodingKeys.year]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
