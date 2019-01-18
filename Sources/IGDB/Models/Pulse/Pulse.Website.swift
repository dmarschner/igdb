import Foundation

extension Pulse {

    /// [Pulse Website](https://api-docs.igdb.com/#pulse-url)
    ///
    /// A URL linking to the article
    public struct Website: IGDB.Website {

        /// Uses predefined type for coding
        public typealias CodingKeys = WebsiteCodingKeys

        /// The API endpoint to request these entities from
        public static var requestPath: String = "pulse_urls"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Whether is a trusted site, or not
        public let trusted: Bool?

        /// The service this website links to
        public let category: WebsiteCategory?

        /// The website address (URL) of the item
        public let url: String?
    }
}
