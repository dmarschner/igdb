import Foundation

/// [Pulse](https://api-docs.igdb.com/#pulse)
///
/// A single news article.
///
/// API path: [/pulses](https://api-v3.igdb.com/pulses)
public struct Pulse: Identifiable, Entity, AutoComposable, AutoFilterable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/pulses](https://api-v3.igdb.com/pulses)
    public static let requestPath: String = "pulses"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

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
    public let pulseSource: Expander<PulseSource>?

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
