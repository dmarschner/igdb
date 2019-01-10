import Foundation

/// [Feed](https://api-docs.igdb.com/#feed)
///
/// Feed items are a social feed of status updates, media and news articles.
///
/// API path: [/feeds](https://api-v3.igdb.com/feeds)
public struct Feed: Codable, Identifiable, Composable, Updatable {

    // sourcery:inline:Feed.CodingKeys

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case content
        case feedLikesCount = "feed_likes_count"
        case feedVideo = "feed_video"
        case games
        case meta
        case publishedAt = "published_at"
        case pulse
        case slug
        case title
        case uid
        case url
        case user
    }
    // sourcery:end

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The type of feed item
    public let category: Category?

    /// The content of the feed item
    public let content: String?

    /// Number of likes this feed item has
    public let feedLikesCount: Int?

    /// A video associated with this feed item
    public let feedVideo: Expander<Game.Video>?

    /// The games connected to this feed item
    public let games: Expander<[Game]>?

    /// Other meta data
    public let meta: String?

    /// The date this item was initially published by the third party
    public let publishedAt: Date?

    /// The pulse article associated with this feed item
    public let pulse: Pulse.Identifier?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// Title of the feed item (usually blank)
    public let title: String?

    /// A unique ID
    public let uid: String?

    /// The website address (URL) of the item
    public let url: String?

    /// The user who created the feed item
    public let user: Int?
}
