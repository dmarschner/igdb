import Foundation
import Apicalypse

extension Achievement: Composable {
    // sourcery:inline:Achievement.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Achievement>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Achievement.identifier: return CodingKeys.identifier
        case \Achievement.createdAt: return CodingKeys.createdAt
        case \Achievement.updatedAt: return CodingKeys.updatedAt
        case \Achievement.icon: return CodingKeys.icon
        case \Achievement.category: return CodingKeys.category
        case \Achievement.description: return CodingKeys.description
        case \Achievement.externalId: return CodingKeys.externalId
        case \Achievement.game: return CodingKeys.game
        case \Achievement.language: return CodingKeys.language
        case \Achievement.name: return CodingKeys.name
        case \Achievement.ownersPercentage: return CodingKeys.ownersPercentage
        case \Achievement.rank: return CodingKeys.rank
        case \Achievement.slug: return CodingKeys.slug
        case \Achievement.tags: return CodingKeys.tags
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
