import Foundation

/// [Achievement](https://api-docs.igdb.com/?swift#achievement)
///
/// Request path: https://api-v3.igdb.com/achievements
///
/// Representation:
///
///     {
///         "id": 1234,
///         "name": "Boss Killer",
///         "category": 1,
///         "created_at": 1529500723000,
///         "updated_at": 1529500723000,
///         "icon": {
///             "url": "https://images.igdb.com/igdb/uploads/t_thumb/dadsajj2jdda2.jpg",
///             "cloudinary_id": "dadsajj2jdda2",
///             "width": 1240,
///             "height": 768
///         },
///         "locked_icon": {
///             "url": "https://images.igdb.com/igdb/uploads/t_thumb/dadsajj2jdda2.jpg",
///             "cloudinary_id": "dadsajj2jdda2",
///             "width": 1240,
///             "height": 768
///         },
///         "game": 41233,
///         "rank": 3,
///         "external_id": "AKM_E123DDD",
///         "description": "Defeat the end boss!",
///         "owners": 32321,
///         "owners_percentage": 42.31233,
///         "tags": ["Tag1", "Tag2", "Tag3"],
///         "language": 1
///     }
public final class Achievement: BaseEndpoint, Endpoint {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum CodingKeys: String, CodingKey, Fields {
        case icon = "achievement_icon"
        case category, description
        case externalId = "external_id"
        case game, language, name
        case ownersPercentage = "owners_percentage"
        case rank, slug, tags
    }

    /// The icon of a specific achievement
    public let icon: Expander<Icon>?

    /// The platform that a specific achievement belongs to
    public let category: Category?

    /// The text explaining how to unlock an achievement
    public let description: String?

    /// The ID given to the achievement by the external service
    public let externalId: String?

    /// The ID of the game the achievement is connected to
    public let game: Expander<Game>?

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

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        icon = try container.decodeIfPresent(Expander<Icon>.self, forKey: .icon)
        category = try container.decodeIfPresent(Category.self, forKey: .category)
        description = try container.decodeIfPresent(String.self, forKey: .description)
        externalId = try container.decodeIfPresent(String.self, forKey: .externalId)
        game = try container.decodeIfPresent(Expander<Game>.self, forKey: .game)
        language = try container.decodeIfPresent(Region.self, forKey: .language)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        ownersPercentage = try container.decodeIfPresent(Double.self, forKey: .ownersPercentage)
        rank = try container.decodeIfPresent(Rank.self, forKey: .rank)
        slug = try container.decodeIfPresent(String.self, forKey: .slug)
        tags = try container.decodeIfPresent([Tag].self, forKey: .tags)
    }
}
