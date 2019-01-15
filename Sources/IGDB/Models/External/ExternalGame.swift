import Foundation

// TODO: 403 Forbidden in default tier

/// [External Game](https://api-docs.igdb.com/#external-game) reference
///
/// Game IDs on other services
///
/// API path: [/external_games](https://api-v3.igdb.com/external_games)
public struct ExternalGame: Identifiable, Entity, AutoComposable, AutoFilterable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/external_games](https://api-v3.igdb.com/external_games)
    public static let requestPath: String = "external_games"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The id of the other service
    public let category: Category?

    /// The IGDB ID of the game
    public let game: Game.Identifier?

    /// The name of the game according to the other service
    public let name: String?

    /// The other services ID for this game
    public let uid: String?

    /// The website address (URL) of the item
    public let url: String?

    /// The year in full (2018)
    // sourcery: key = y
    public let year: Int?
}
