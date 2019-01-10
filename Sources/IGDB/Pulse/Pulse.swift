import Foundation

/// [Pulse](https://api-docs.igdb.com/#pulse)
///
/// A single news article.
///
/// API path: [/pulses](https://api-v3.igdb.com/pulses)
public final class Pulse: Endpoint, Composable, Updatable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case createdAt, updateAt // Updatable
        case author, image, publishedAt, pulse_source
        case summary, tags, title, uid, videos, website
    }

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The author of the article according to the publisher
    public let author: String?

    /// The url of the main image of the article
    public let image: String?

    /// The date this item was initially published by the third party
    public let publishedAt: Date?

    /// The ID of the publisher
    public let pulse_source: Expander<Source>?

    /// A brief extract of the article
    public let summary: String?

    /// Related entities in the IGDB API
    public let tags: [Tag]?

    /// The title of the article
    public let title: String?

    /// A unique ID for this article
    public let uid: String?

    /// Any videos embedded in the article
    public let videos: [String]?

    /// <# Description #>
    public let website: Expander<Website>?
}
