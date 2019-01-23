import Foundation
import Apicalypse

extension Title: Composable {
    // sourcery:inline:Title.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Title.identifier: return [CodingKeys.identifier]
        case \Title.createdAt: return [CodingKeys.createdAt]
        case \Title.updatedAt: return [CodingKeys.updatedAt]
        case \Title.description: return [CodingKeys.description]
        case \Title.games: return [CodingKeys.games]
        case \Title.name: return [CodingKeys.name]
        case \Title.slug: return [CodingKeys.slug]
        case \Title.url: return [CodingKeys.url]
        default: break
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try Title.codingPath(for: \Title.games)
                + Game.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
