import Foundation

/// [Feed](https://api-docs.igdb.com/#feed)
///
/// Feed items are a social feed of status updates, media and news articles.
///
/// API path: [/feeds](https://api-v3.igdb.com/feeds)
public struct Feed: Codable, Identifiable, Composable, Updatable {

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
    public let pulse: Expander<Pulse>?

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

extension Feed {
}

extension Feed  {
}