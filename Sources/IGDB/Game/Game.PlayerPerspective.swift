import Foundation

extension Game {

    /// [Player Perspective](https://api-docs.igdb.com/#player-perspective)
    ///
    /// Player perspectives describe the view/perspective of the player in a video game.
    ///
    /// API path: [/player_perspectives](https://api-v3.igdb.com/player_perspectives)
    public struct PlayerPerspective: Identifiable, Composable, Updatable, Codable {

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// The name of the game mode
        public let name: String?

        /// A url-safe, unique, lower-case version of the name
        public let slug: String?

        /// The website address (URL) of the item
        public let url: String?
    }
}

extension Game.PlayerPerspective {

    // sourcery:inline:Game.PlayerPerspective.CodingKeys
    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case name
        case slug
        case url
    }
    // sourcery:end
}
