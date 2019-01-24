import Foundation
import Apicalypse

extension Page: Composable {
    // sourcery:inline:Page.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Page>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Page.identifier: return CodingKeys.identifier
        case \Page.createdAt: return CodingKeys.createdAt
        case \Page.updatedAt: return CodingKeys.updatedAt
        case \Page.background: return CodingKeys.background
        case \Page.battlenet: return CodingKeys.battlenet
        case \Page.category: return CodingKeys.category
        case \Page.color: return CodingKeys.color
        case \Page.company: return CodingKeys.company
        case \Page.country: return CodingKeys.country
        case \Page.description: return CodingKeys.description
        case \Page.feed: return CodingKeys.feed
        case \Page.game: return CodingKeys.game
        case \Page.name: return CodingKeys.name
        case \Page.origin: return CodingKeys.origin
        case \Page.pageFollowsCount: return CodingKeys.pageFollowsCount
        case \Page.pageLogo: return CodingKeys.pageLogo
        case \Page.slug: return CodingKeys.slug
        case \Page.subCategory: return CodingKeys.subCategory
        case \Page.uplay: return CodingKeys.uplay
        case \Page.url: return CodingKeys.url
        case \Page.websites: return CodingKeys.websites
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
