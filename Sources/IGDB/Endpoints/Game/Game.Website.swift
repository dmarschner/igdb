import Foundation

extension Game {

    /// [Game Website](https://api-docs.igdb.com/#website)
    ///
    /// A website url, usually associated with a game
    public final class Website: Identifiable, IGDB.Website, Codable {

        /// The API endpoint to request these entities from
        public static var requestPath: String = "websites"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Whether is a trusted site, or not
        public let trusted: Bool?

        /// The service this website links to
        public let category: WebsiteCategory?

        /// The website address (URL) of the item
        public let url: String?

        // sourcery:inline:Game.Website.Codable
    // swiftlint:disable all

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey {
            case identifier = "id"
            case trusted
            case category
            case url
        }

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public init(from decoder: Decoder) throws {
            // Find proper container, and decode the identifier right away. This is the only mandatory property.
            let container: KeyedDecodingContainer<Game.Website.CodingKeys>?
            if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
                identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
                container = keyedContainer
            } else {
                let singleContainer = try decoder.singleValueContainer()
                identifier = try singleContainer.decode(Identifier.self)
                container = nil
            }
            // Extended decoding - any other property than identifier is optional
            trusted = try container?.decodeIfPresent(Bool.self, forKey: .trusted) ?? nil
            category = try container?.decodeIfPresent(WebsiteCategory.self, forKey: .category) ?? nil
            url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
        }

        /// Encodes this value into the given encoder.
        ///
        /// If the value fails to encode anything, `encoder` will encode an empty
        /// keyed container in its place.
        ///
        /// This function throws an error if any values are invalid for the given
        /// encoder's format.
        ///
        /// - Parameter encoder: The encoder to write data to.
        public func encode(to encoder: Encoder) throws {
            guard !isSingleValueContainable() else {
                var container = encoder.singleValueContainer()
                return try container.encode(identifier)
            }
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(identifier, forKey: .identifier)
            try container.encodeIfPresent(trusted, forKey: .trusted)
            try container.encodeIfPresent(category, forKey: .category)
            try container.encodeIfPresent(url, forKey: .url)
        }

        /// Returns true if all properties but the identifier are `nil`.
        public func isSingleValueContainable() -> Bool {
            return  // true, if all properties are nil
                trusted == nil &&
                category == nil &&
                url == nil &&
                true // Have not found a way to trim the last && with sourcery
        }
    // swiftlint:enable all
        // sourcery:end
    }
}
