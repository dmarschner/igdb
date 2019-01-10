import Foundation

public extension Game {

    /// [Title](https://api-docs.igdb.com/#title)
    ///
    /// Job titles in the games industry
    ///
    /// API path: [/titles](https://api-v3.igdb.com/titles)
    public struct Title: Codable, Identifiable, Composable, Updatable {

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// A description of the job role
        public let description: String?

        /// Games that utilised this job role during development or production
        public let games: Expander<[Game]>?

        /// The name of the game mode
        public let name: String?

        /// A url-safe, unique, lower-case version of the name
        public let slug: String?

        /// The website address (URL) of the item
        public let url: String?
    }
}

extension Title {
}

extension Title  {
}
