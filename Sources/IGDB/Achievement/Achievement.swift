import Foundation

// TODO: 401 Unauthorized
// TODO: Is not free tier endpoint
// TODO: Currently game only - maybe scope it

/// [Achievement](https://api-docs.igdb.com/?swift#achievement) data for specific games for
/// specific platforms (currently limited to achievements from steam, playstation and Xbox)
///
/// API path: [/achievements](https://api-v3.igdb.com/achievements)
public struct Achievement: Codable, Identifiable, Composable, Updatable {

    // sourcery:inline:Achievement.CodingKeys

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case achievementIcon = "achievement_icon"
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
    // sourcery:end

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The icon of a specific achievement
    public let achievementIcon: Expander<Icon>?

    /// The platform that a specific achievement belongs to
    public let category: Category?

    /// The text explaining how to unlock an achievement
    public let description: String?

    /// The ID given to the achievement by the external service
    public let externalId: String?

    /// The ID of the game the achievement is connected to
    public let game: Game.Identifier?

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
}
