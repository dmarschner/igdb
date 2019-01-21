import Foundation

extension GameVersion: Composable {
    // sourcery:inline:GameVersion.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<GameVersion>) throws -> [CodingKey] {
        switch keyPath {
        case \GameVersion.identifier: return [CodingKeys.identifier]
        case \GameVersion.createdAt: return [CodingKeys.createdAt]
        case \GameVersion.updatedAt: return [CodingKeys.updatedAt]
        case \GameVersion.features: return [CodingKeys.features]
        case \GameVersion.game: return [CodingKeys.game]
        case \GameVersion.games: return [CodingKeys.games]
        case \GameVersion.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
