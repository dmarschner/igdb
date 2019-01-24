import Foundation
import Apicalypse

extension Feed: Composable {
    // sourcery:inline:Feed.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Feed>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Feed.identifier: return CodingKeys.identifier
        case \Feed.createdAt: return CodingKeys.createdAt
        case \Feed.updatedAt: return CodingKeys.updatedAt
        case \Feed.category: return CodingKeys.category
        case \Feed.content: return CodingKeys.content
        case \Feed.feedLikesCount: return CodingKeys.feedLikesCount
        case \Feed.feedVideo: return CodingKeys.feedVideo
        case \Feed.games: return CodingKeys.games
        case \Feed.meta: return CodingKeys.meta
        case \Feed.publishedAt: return CodingKeys.publishedAt
        case \Feed.pulse: return CodingKeys.pulse
        case \Feed.slug: return CodingKeys.slug
        case \Feed.title: return CodingKeys.title
        case \Feed.uid: return CodingKeys.uid
        case \Feed.url: return CodingKeys.url
        case \Feed.user: return CodingKeys.user
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
