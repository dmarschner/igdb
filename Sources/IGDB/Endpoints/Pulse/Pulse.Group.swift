import Foundation

extension Pulse {

    /// [Pulse Group](https://api-docs.igdb.com/#pulse-group)
    ///
    /// Pulse groups are a combined array of news articles that are about a specific game
    /// and were published around the same time period.
    public final class Group: Identifiable, Updatable, Codable {

        /// The API endpoint to request these entities from.
        /// Path: [/pulse_groups](https://api-v3.igdb.com/pulse_groups)
        public static let requestPath: String = "pulse_groups"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// The game these articles are about
        public let game: Game?

        /// The name of the group
        public let name: String?

        /// The date this item was initially published by the third party
        public let publishedAt: Date?

        /// The articles within this pulse group
        public let pulses: [Pulse]?

        /// Related entities in the IGDB API
        public let tags: [Tag]?

        // sourcery:inline:Pulse.Group.Codable

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey {
            case identifier = "id"
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case game
            case name
            case publishedAt = "published_at"
            case pulses
            case tags
        }

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public init(from decoder: Decoder) throws {
            // Find proper container, and decode the identifier right away. This is the only mandatory property.
            let container: KeyedDecodingContainer<Pulse.Group.CodingKeys>?
            if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
                identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
                container = keyedContainer
            } else {
                let singleContainer = try decoder.singleValueContainer()
                identifier = try singleContainer.decode(Identifier.self)
                container = nil
            }
            // Extended decoding - any other property than identifier is optional
            createdAt = try container?.decodeIfPresent(Date.self, forKey: .createdAt) ?? nil
            updatedAt = try container?.decodeIfPresent(Date.self, forKey: .updatedAt) ?? nil
            game = try container?.decodeIfPresent(Game.self, forKey: .game) ?? nil
            name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
            publishedAt = try container?.decodeIfPresent(Date.self, forKey: .publishedAt) ?? nil
            pulses = try container?.decodeIfPresent([Pulse].self, forKey: .pulses) ?? nil
            tags = try container?.decodeIfPresent([Tag].self, forKey: .tags) ?? nil
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
            try container.encodeIfPresent(createdAt, forKey: .createdAt)
            try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            try container.encodeIfPresent(game, forKey: .game)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(publishedAt, forKey: .publishedAt)
            try container.encodeIfPresent(pulses, forKey: .pulses)
            try container.encodeIfPresent(tags, forKey: .tags)
        }

        /// Returns true if all properties but the identifier are `nil`.
        public func isSingleValueContainable() -> Bool {
            return  // true, if all properties are nil
                createdAt == nil &&
                updatedAt == nil &&
                game == nil &&
                name == nil &&
                publishedAt == nil &&
                pulses == nil &&
                tags == nil &&
                true // Have not found a way to trim the last && with sourcery
        }
        // sourcery:end
    }
}
