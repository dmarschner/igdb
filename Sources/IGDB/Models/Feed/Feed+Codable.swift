import Foundation

extension Feed: Codable {
    // sourcery:inline:Feed.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
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

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<Feed.CodingKeys>?
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
        category = try container?.decodeIfPresent(Category.self, forKey: .category) ?? nil
        content = try container?.decodeIfPresent(String.self, forKey: .content) ?? nil
        feedLikesCount = try container?.decodeIfPresent(Int.self, forKey: .feedLikesCount) ?? nil
        feedVideo = try container?.decodeIfPresent(Video.self, forKey: .feedVideo) ?? nil
        games = try container?.decodeIfPresent([Game].self, forKey: .games) ?? nil
        meta = try container?.decodeIfPresent(String.self, forKey: .meta) ?? nil
        publishedAt = try container?.decodeIfPresent(Date.self, forKey: .publishedAt) ?? nil
        pulse = try container?.decodeIfPresent(Pulse.Identifier.self, forKey: .pulse) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
        title = try container?.decodeIfPresent(String.self, forKey: .title) ?? nil
        uid = try container?.decodeIfPresent(String.self, forKey: .uid) ?? nil
        url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
        user = try container?.decodeIfPresent(Int.self, forKey: .user) ?? nil
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
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(feedLikesCount, forKey: .feedLikesCount)
        try container.encodeIfPresent(feedVideo, forKey: .feedVideo)
        try container.encodeIfPresent(games, forKey: .games)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(publishedAt, forKey: .publishedAt)
        try container.encodeIfPresent(pulse, forKey: .pulse)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(user, forKey: .user)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            category == nil &&
            content == nil &&
            feedLikesCount == nil &&
            feedVideo == nil &&
            games == nil &&
            meta == nil &&
            publishedAt == nil &&
            pulse == nil &&
            slug == nil &&
            title == nil &&
            uid == nil &&
            url == nil &&
            user == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
