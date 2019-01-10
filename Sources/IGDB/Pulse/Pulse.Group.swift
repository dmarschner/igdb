import Foundation

public extension Pulse {

    /// [Pulse Group](https://api-docs.igdb.com/#pulse-group)
    ///
    /// Pulse groups are a combined array of news articles that are about a specific game
    /// and were published around the same time period.
    ///
    /// API path: [/pulse_groups](https://api-v3.igdb.com/pulse_groups)
    public struct Group: Codable, Identifiable, Composable, Updatable {

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// The game these articles are about
        public let game: Expander<Game>?

        /// <# Description #>
        public let name: String?

        /// The date this item was initially published by the third party
        public let publishedAt: Date?

        /// The articles within this pulse group
        public let pulses: Expander<[Pulse]>?

        /// Related entities in the IGDB API
        public let tags: [Tag]?
    }
}

extension Group {
}

extension Group  {
}
