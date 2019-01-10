import Foundation

public extension Game {

    /// [Involved Company](https://api-docs.igdb.com/#involved-company)
    ///
    /// API path: [/involved_companies](https://api-v3.igdb.com/involved_companies)
    public struct InvolvedCompany: Codable, Identifiable, Composable, Updatable {

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

extension InvolvedCompany {
}

extension InvolvedCompany  {
}

