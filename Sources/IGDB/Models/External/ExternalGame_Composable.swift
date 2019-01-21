import Foundation

extension ExternalGame: Composable {
    // sourcery:inline:ExternalGame.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \ExternalGame.identifier: return [CodingKeys.identifier]
        case \ExternalGame.createdAt: return [CodingKeys.createdAt]
        case \ExternalGame.updatedAt: return [CodingKeys.updatedAt]
        case \ExternalGame.category: return [CodingKeys.category]
        case \ExternalGame.game: return [CodingKeys.game]
        case \ExternalGame.name: return [CodingKeys.name]
        case \ExternalGame.uid: return [CodingKeys.uid]
        case \ExternalGame.url: return [CodingKeys.url]
        case \ExternalGame.year: return [CodingKeys.year]
        default: break
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try ExternalGame.codingPath(for: \ExternalGame.game)
                + Game.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
