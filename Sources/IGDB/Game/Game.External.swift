import Foundation

// TODO: 403 Forbidden in default tier

public extension Game {

    /// [External Game](https://api-docs.igdb.com/#external-game) reference
    ///
    /// Game IDs on other services
    ///
    /// API path: [/external_games](https://api-v3.igdb.com/external_games)
    public struct External: Codable, Identifiable, Composable, Updatable {

        /// The external service identifier
        public enum Category: Int, Codable {
            case steam = 1
            case gog = 5
            case youtube = 10
            case microsoft = 11
            case apple = 13
            case twitch = 14
            case android = 15
        }

        // sourcery:inline:Game.External.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
            case identifier = "id"
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case category
            case game
            case name
            case uid
            case url
            case year = "y"
        }
        // sourcery:end

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// The id of the other service
        public let category: Category?

        /// The IGDB ID of the game
        public let game: Expander<Game>?

        /// The name of the game according to the other service
        public let name: String?

        /// The other services ID for this game
        public let uid: String?

        /// The website address (URL) of the item
        public let url: String?

        /// The year in full (2018)
        public let year: Int?
    }
}
