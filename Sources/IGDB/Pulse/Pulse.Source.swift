import Foundation

extension Pulse {

    /// [Pulse Source](https://api-docs.igdb.com/#pulse-source)
    ///
    /// A news article source such as IGN.
    ///
    /// API path: [/pulse_sources](https://api-v3.igdb.com/pulse_sources)
    public struct Source: Identifiable, Composable, Codable {

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// If the source only contains news for a specific game, that game ID will be here
        public let game: Expander<Game>?

        /// Name of the article’s publisher
        public let name: String?

        /// The related page that contains more information about the source
        public let page: Expander<Page>?
    }
}

extension Pulse.Source {

    // sourcery:inline:Pulse.Source.CodingKeys
    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case game
        case name
        case page
    }
    // sourcery:end
}
