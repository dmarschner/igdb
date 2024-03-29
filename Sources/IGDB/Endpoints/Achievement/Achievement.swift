import Foundation

/// [Achievement](https://api-docs.igdb.com/?swift#achievement)
///
/// Achievement data for specific games for specific platforms (currently
/// limited to achievements from steam, playstation and Xbox)
///
/// - Note: This endpoint is not available within the Free Tier (requires Pro)
public final class Achievement: Identifiable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/achievements](https://api-v3.igdb.com/achievements)
    public static let requestPath: String = "achievements"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    // sourcery: key = achievement_icon
    /// The icon of a specific achievement
    public let icon: Icon?

    /// The platform that a specific achievement belongs to
    public let category: Category?

    /// The text explaining how to unlock an achievement
    public let description: String?

    /// The ID given to the achievement by the external service
    public let externalId: String?

    /// The ID of the game the achievement is connected to
    public let game: Game?

    /// The ID of a region
    public let language: Region?

    /// The name of the achievement
    public let name: String?

    /// Approximate percentage of players that have unlocked an achievement
    public let ownersPercentage: Double?

    /// ID of an Achievement Rank
    public let rank: Rank?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// Related entities in the IGDB API
    public let tags: [Tag]?

    // sourcery:inline:Achievement.Codable
    // swiftlint:disable all

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case icon = "achievement_icon"
        case category
        case description
        case externalId = "external_id"
        case game
        case language
        case name
        case ownersPercentage = "owners_percentage"
        case rank
        case slug
        case tags
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<Achievement.CodingKeys>?
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
        icon = try container?.decodeIfPresent(Icon.self, forKey: .icon) ?? nil
        category = try container?.decodeIfPresent(Category.self, forKey: .category) ?? nil
        description = try container?.decodeIfPresent(String.self, forKey: .description) ?? nil
        externalId = try container?.decodeIfPresent(String.self, forKey: .externalId) ?? nil
        game = try container?.decodeIfPresent(Game.self, forKey: .game) ?? nil
        language = try container?.decodeIfPresent(Region.self, forKey: .language) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        ownersPercentage = try container?.decodeIfPresent(Double.self, forKey: .ownersPercentage) ?? nil
        rank = try container?.decodeIfPresent(Rank.self, forKey: .rank) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
        tags = try container?.decodeIfPresent([Tag].self, forKey: .tags) ?? nil
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
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(game, forKey: .game)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(ownersPercentage, forKey: .ownersPercentage)
        try container.encodeIfPresent(rank, forKey: .rank)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(tags, forKey: .tags)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            icon == nil &&
            category == nil &&
            description == nil &&
            externalId == nil &&
            game == nil &&
            language == nil &&
            name == nil &&
            ownersPercentage == nil &&
            rank == nil &&
            slug == nil &&
            tags == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // swiftlint:enable all
    // sourcery:end
}
