import Foundation

extension Game {

    /// [Title](https://api-docs.igdb.com/#title)
    ///
    /// Job titles in the games industry
    ///
    /// API path: [/titles](https://api-v3.igdb.com/titles)
    public struct Title: Identifiable, Composable, Updatable, Codable {

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

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

extension Game.Title {

    // sourcery:inline:Game.Title.CodingKeys
    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case description
        case games
        case name
        case slug
        case url
    }
    // sourcery:end
}
