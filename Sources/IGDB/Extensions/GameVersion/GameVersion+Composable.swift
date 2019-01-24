import Foundation
import Apicalypse

extension GameVersion: Composable {
    // sourcery:inline:GameVersion.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<GameVersion>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \GameVersion.identifier: return CodingKeys.identifier
        case \GameVersion.createdAt: return CodingKeys.createdAt
        case \GameVersion.updatedAt: return CodingKeys.updatedAt
        case \GameVersion.features: return CodingKeys.features
        case \GameVersion.game: return CodingKeys.game
        case \GameVersion.games: return CodingKeys.games
        case \GameVersion.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
