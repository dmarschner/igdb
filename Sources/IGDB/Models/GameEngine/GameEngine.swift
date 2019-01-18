import Foundation

/// [Game Engine](https://api-docs.igdb.com/#game-engine)
///
/// Video game engines such as unreal engine.
public struct GameEngine: Identifiable, Updatable {

    /// The API endpoint to request these entities from.
    /// Path: [/game_engines](https://api-v3.igdb.com/game_engines)
    public static let requestPath: String = "game_engines"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// Companies who used this game engine
    public let companies: [Company]?

    /// Description of the game engine
    public let description: String?

    /// Logo of the game engine
    public let logo: Logo?

    /// Name of the game engine
    public let name: String?

    /// Platforms this game engine was deployed on
    public let platforms: [Platform]?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The website address (URL) of the item
    public let url: String?
}
