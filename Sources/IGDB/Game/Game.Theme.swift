import Foundation

public extension Game {

    /// [Theme](https://api-docs.igdb.com/#theme)
    ///
    /// Video game themes
    ///
    /// API path: [/themes](https://api-v3.igdb.com/themes)
    public struct Theme: Codable, Identifiable, Composable, Updatable {

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

extension Theme {
}

extension Theme  {
}
