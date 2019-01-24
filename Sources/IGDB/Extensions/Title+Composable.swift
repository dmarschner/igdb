import Foundation
import Apicalypse

extension Title: Composable {
    // sourcery:inline:Title.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Title>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Title.identifier: return CodingKeys.identifier
        case \Title.createdAt: return CodingKeys.createdAt
        case \Title.updatedAt: return CodingKeys.updatedAt
        case \Title.description: return CodingKeys.description
        case \Title.games: return CodingKeys.games
        case \Title.name: return CodingKeys.name
        case \Title.slug: return CodingKeys.slug
        case \Title.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
