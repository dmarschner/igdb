import Foundation
import Apicalypse

extension GameVersion: Composable {
    // sourcery:inline:GameVersion.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \GameVersion.identifier: return [CodingKeys.identifier]
        case \GameVersion.createdAt: return [CodingKeys.createdAt]
        case \GameVersion.updatedAt: return [CodingKeys.updatedAt]
        case \GameVersion.features: return [CodingKeys.features]
        case \GameVersion.game: return [CodingKeys.game]
        case \GameVersion.games: return [CodingKeys.games]
        case \GameVersion.url: return [CodingKeys.url]
        default: break
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try GameVersion.codingPath(for: \GameVersion.game)
                + Game.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try GameVersion.codingPath(for: \GameVersion.games)
                + Game.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `GameVersionFeature`
        if type(of: keyPath).rootType is GameVersionFeature.Type {
            return try GameVersion.codingPath(for: \GameVersion.features)
                + GameVersionFeature.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
