import Foundation
import Apicalypse

extension GameMode: Composable {
    // sourcery:inline:GameMode.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<GameMode>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \GameMode.identifier: return CodingKeys.identifier
        case \GameMode.createdAt: return CodingKeys.createdAt
        case \GameMode.updatedAt: return CodingKeys.updatedAt
        case \GameMode.name: return CodingKeys.name
        case \GameMode.slug: return CodingKeys.slug
        case \GameMode.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
