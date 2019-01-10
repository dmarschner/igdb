import Foundation

extension Game {

    /// [Keyword](https://api-docs.igdb.com/#keyword)
    ///
    /// Keywords are words or phrases that get tagged to a game such as “world war 2” or “steampunk”.
    ///
    /// API path: [/keywords](https://api-v3.igdb.com/keywords)
    public struct Keyword: Identifiable, Composable, Updatable, Codable {

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// The name of the genre
        public let name: String?

        /// A url-safe, unique, lower-case version of the name
        public let slug: String?

        /// The website address (URL) of the item
        public let url: String?
    }
}

extension Game.Keyword {

    // sourcery:inline:Game.Keyword.CodingKeys
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
