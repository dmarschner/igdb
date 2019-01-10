import Foundation

public extension Game {

    /// [Game Version](https://api-docs.igdb.com/#game-version)
    ///
    /// Details about game editions and versions.
    ///
    /// API path: [/game_versions](https://api-v3.igdb.com/game_versions)
    public final class Version: Endpoint, Composable, Updatable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, Field {
            case createdAt, updatedAt // Updatable
            case features, game, games, url
        }

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
}
