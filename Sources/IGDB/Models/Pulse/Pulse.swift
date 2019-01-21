import Foundation

/// [Pulse](https://api-docs.igdb.com/#pulse)
///
/// A single news article.
public final class Pulse: Identifiable, Updatable, Codable {

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
    public let pulseSource: PulseSource?

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

    /// The link to the website
    public let website: Website?

    // sourcery:inline:Pulse.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case author
        case image
        case publishedAt = "published_at"
        case pulseSource = "pulse_source"
        case summary
        case tags
        case title
        case uid
        case videos
        case website
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<Pulse.CodingKeys>?
        if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        } else {
            let singleContainer = try decoder.singleValueContainer()
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        }
        // Extended decoding - any other property than identifier is optional
        createdAt = try container?.decodeIfPresent(Date.self, forKey: .createdAt) ?? nil
        updatedAt = try container?.decodeIfPresent(Date.self, forKey: .updatedAt) ?? nil
        author = try container?.decodeIfPresent(String.self, forKey: .author) ?? nil
        image = try container?.decodeIfPresent(String.self, forKey: .image) ?? nil
        publishedAt = try container?.decodeIfPresent(Date.self, forKey: .publishedAt) ?? nil
        pulseSource = try container?.decodeIfPresent(PulseSource.self, forKey: .pulseSource) ?? nil
        summary = try container?.decodeIfPresent(String.self, forKey: .summary) ?? nil
        tags = try container?.decodeIfPresent([Tag].self, forKey: .tags) ?? nil
        title = try container?.decodeIfPresent(String.self, forKey: .title) ?? nil
        uid = try container?.decodeIfPresent(String.self, forKey: .uid) ?? nil
        videos = try container?.decodeIfPresent([String].self, forKey: .videos) ?? nil
        website = try container?.decodeIfPresent(Website.self, forKey: .website) ?? nil
    }

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws {
        guard !isSingleValueContainable() else {
            var container = encoder.singleValueContainer()
            return try container.encode(identifier)
        }
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(identifier, forKey: .identifier)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(author, forKey: .author)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(publishedAt, forKey: .publishedAt)
        try container.encodeIfPresent(pulseSource, forKey: .pulseSource)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(videos, forKey: .videos)
        try container.encodeIfPresent(website, forKey: .website)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            author == nil &&
            image == nil &&
            publishedAt == nil &&
            pulseSource == nil &&
            summary == nil &&
            tags == nil &&
            title == nil &&
            uid == nil &&
            videos == nil &&
            website == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
