import Foundation

// TODO: 403 Forbidden in default tier

/// [Achievement](https://api-docs.igdb.com/?swift#achievement)
///
/// Achievement data for specific games for specific platforms (currently
/// limited to achievements from steam, playstation and Xbox)
public struct Achievement: Identifiable, Entity, AutoComposable, AutoFilterable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/achievements](https://api-v3.igdb.com/achievements)
    public static let requestPath: String = "achievements"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The icon of a specific achievement
    // sourcery: key = achievement_icon
    public let icon: Expander<Icon>?

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
