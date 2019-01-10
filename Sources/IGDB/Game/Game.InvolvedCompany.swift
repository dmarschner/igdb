import Foundation

public extension Game {

    /// [Involved Company](https://api-docs.igdb.com/#involved-company)
    ///
    /// API path: [/involved_companies](https://api-v3.igdb.com/involved_companies)
    public struct InvolvedCompany: Codable, Identifiable, Composable, Updatable {

        // sourcery:inline:Game.InvolvedCompany.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
            case identifier = "id"
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case company
            case developer
            case game
            case porting
            case publisher
            case supporting
        }
        // sourcery:end

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        public let company: Expander<Company>?

        public let developer: Bool?

        public let game: Expander<Game>?

        public let porting: Bool?

        public let publisher: Bool?

        public let supporting: Bool?
    }
}
