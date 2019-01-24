import Foundation

extension Pulse {

    /// [Pulse Source](https://api-docs.igdb.com/#pulse-source)
    ///
    /// A news article source such as IGN.
    public final class Source: Identifiable, Codable {

        /// The API endpoint to request these entities from.
        /// Path: [/pulse_sources](https://api-v3.igdb.com/pulse_sources)
        public static let requestPath: String = "pulse_sources"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// If the source only contains news for a specific game, that game ID will be here
        public let game: Game?

        /// Name of the article’s publisher
        public let name: String?

        /// The related page that contains more information about the source
        public let page: Page?

        // sourcery:inline:Pulse.Source.Codable
    // swiftlint:disable all

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey {
            case identifier = "id"
            case game
            case name
            case page
        }

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public init(from decoder: Decoder) throws {
            // Find proper container, and decode the identifier right away. This is the only mandatory property.
            let container: KeyedDecodingContainer<Pulse.Source.CodingKeys>?
            if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
                identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
                container = keyedContainer
            } else {
                let singleContainer = try decoder.singleValueContainer()
                identifier = try singleContainer.decode(Identifier.self)
                container = nil
            }
            // Extended decoding - any other property than identifier is optional
            game = try container?.decodeIfPresent(Game.self, forKey: .game) ?? nil
            name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
            page = try container?.decodeIfPresent(Page.self, forKey: .page) ?? nil
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
            try container.encodeIfPresent(game, forKey: .game)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(page, forKey: .page)
        }

        /// Returns true if all properties but the identifier are `nil`.
        public func isSingleValueContainable() -> Bool {
            return  // true, if all properties are nil
                game == nil &&
                name == nil &&
                page == nil &&
                true // Have not found a way to trim the last && with sourcery
        }
    // swiftlint:enable all
        // sourcery:end
    }
}
