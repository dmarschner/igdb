import Foundation

public extension Pulse {

    /// [Pulse Source](https://api-docs.igdb.com/#pulse-source)
    ///
    /// A news article source such as IGN.
    ///
    /// API path: [/pulse_sources](https://api-v3.igdb.com/pulse_sources)
    public final class Source: Endpoint, Composable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, CodingKey, Field {
            case game, name, page
        }

        /// If the source only contains news for a specific game, that game ID will be here
        public let game: Expander<Game>?

        /// Name of the article’s publisher
        public let name: String?

        /// The related page that contains more information about the source
        public let page: Expander<Page>?

    }
}
