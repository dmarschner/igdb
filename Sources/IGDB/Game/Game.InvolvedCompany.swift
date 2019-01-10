import Foundation

public extension Game {

    /// [Involved Company](https://api-docs.igdb.com/#involved-company)
    ///
    /// API path: [/involved_companies](https://api-v3.igdb.com/involved_companies)
    public final class InvolvedCompany: Endpoint, Composable, Updatable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, CodingKey, Field {
            case createdAt, updatedAt // Updatablecompany
            case developer, game, porting, publisher, supporting
        }

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

