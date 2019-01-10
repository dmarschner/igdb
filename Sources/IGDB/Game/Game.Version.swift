import Foundation

public extension Game {

    /// [Game Version](https://api-docs.igdb.com/#game-version)
    ///
    /// Details about game editions and versions.
    ///
    /// API path: [/game_versions](https://api-v3.igdb.com/game_versions)
    public struct Version: Codable, Identifiable, Composable, Updatable {

        // sourcery:inline:Game.Version.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
            case identifier = "id"
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case features
            case game
            case games
            case url
        }
        // sourcery:end

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// Features and descriptions of what makes each version/edition different from the main game
        public let features: Expander<[Game.Feature]>?

        /// The game these versions/editions are of
        public let game: Expander<Game>?

        /// Game Versions and Editions
        public let games: Expander<[Game]>?

        /// The website address (URL) of the item
        public let url: String?
    }
}
