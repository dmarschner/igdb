import Foundation

extension Game {

    /// [Game Mode](https://api-docs.igdb.com/#game-mode)
    ///
    /// Single player, Multiplayer etc
    ///
    /// API path: [/game_modes](https://api-v3.igdb.com/game_modes)
    public struct Mode: Identifiable, AutoComposable, Updatable, Codable {

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