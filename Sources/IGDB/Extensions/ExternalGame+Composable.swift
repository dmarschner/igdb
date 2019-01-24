import Foundation
import Apicalypse

extension ExternalGame: Composable {
    // sourcery:inline:ExternalGame.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<ExternalGame>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \ExternalGame.identifier: return CodingKeys.identifier
        case \ExternalGame.createdAt: return CodingKeys.createdAt
        case \ExternalGame.updatedAt: return CodingKeys.updatedAt
        case \ExternalGame.category: return CodingKeys.category
        case \ExternalGame.game: return CodingKeys.game
        case \ExternalGame.name: return CodingKeys.name
        case \ExternalGame.uid: return CodingKeys.uid
        case \ExternalGame.url: return CodingKeys.url
        case \ExternalGame.year: return CodingKeys.year
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
