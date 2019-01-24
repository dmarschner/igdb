import Foundation
import Apicalypse

extension Search: Composable {
    // sourcery:inline:Search.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Search>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Search.identifier: return CodingKeys.identifier
        case \Search.alternativeName: return CodingKeys.alternativeName
        case \Search.character: return CodingKeys.character
        case \Search.collection: return CodingKeys.collection
        case \Search.company: return CodingKeys.company
        case \Search.description: return CodingKeys.description
        case \Search.game: return CodingKeys.game
        case \Search.name: return CodingKeys.name
        case \Search.platform: return CodingKeys.platform
        case \Search.popularity: return CodingKeys.popularity
        case \Search.theme: return CodingKeys.theme
        case \Search.publishedAt: return CodingKeys.publishedAt
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
