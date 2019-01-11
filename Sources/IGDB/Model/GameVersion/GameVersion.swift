import Foundation

/// [Game Version](https://api-docs.igdb.com/#game-version)
///
/// Details about game editions and versions.
///
/// API path: [/game_versions](https://api-v3.igdb.com/game_versions)
public struct GameVersion: Identifiable, AutoComposable, Updatable, Codable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// Features and descriptions of what makes each version/edition different from the main game
    public let features: Expander<[Feature]>?

    /// The game these versions/editions are of
    public let game: Expander<Game>?

    /// Game Versions and Editions
    public let games: Expander<[Game]>?

    /// The website address (URL) of the item
    public let url: String?
}
