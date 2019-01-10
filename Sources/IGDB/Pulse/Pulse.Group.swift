import Foundation

public extension Pulse {

    /// [Pulse Group](https://api-docs.igdb.com/#pulse-group)
    ///
    /// Pulse groups are a combined array of news articles that are about a specific game
    /// and were published around the same time period.
    ///
    /// API path: [/pulse_groups](https://api-v3.igdb.com/pulse_groups)
    public struct Group: Codable, Identifiable, Composable, Updatable {

        // sourcery:inline:Pulse.Group.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
            case identifier = "id"
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case game
            case name
            case publishedAt = "published_at"
            case pulses
            case tags
        }
        // sourcery:end

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// The game these articles are about
        public let game: Game.Identifier?

        /// <# Description #>
        public let name: String?

        /// The date this item was initially published by the third party
        public let publishedAt: Date?

        /// The articles within this pulse group
        public let pulses: [Pulse.Identifier]?

        /// Related entities in the IGDB API
        public let tags: [Tag]?
    }
}
