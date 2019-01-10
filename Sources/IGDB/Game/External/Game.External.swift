import Foundation

// TODO: 403 Forbidden in default tier

public extension Game {

    /// [External Game](https://api-docs.igdb.com/#external-game) reference
    ///
    /// Game IDs on other services
    ///
    /// API path: [/external_games](https://api-v3.igdb.com/external_games)
    public struct External: Codable, Identifiable, Composable, Updatable {

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

extension External {
}

extension External  {
}
