import Foundation

extension GameVersion {

    /// [Game Version Feature](https://api-docs.igdb.com/#game-version-feature)
    ///
    /// Features and descriptions of what makes each version/edition different from the main game
    public final class Feature: Identifiable, Codable {

        /// Game Version Feature Category
        public enum Category: Int, Codable, CustomStringConvertible {
            case boolean
            case description

            /// A textual representation of this instance.
            public var description: String {
                return String(self.rawValue)
            }
        }

        /// The API endpoint to request these entities from.
        /// Path: [/game_version_features](https://api-v3.igdb.com/game_version_features)
        public static let requestPath: String = "game_version_features"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// The category of the feature description
        public let category: Category?

        /// The description of the feature
        public let description: String?

        /// Position of this feature in the list of features
        public let position: Int?

        /// The title of the feature
        public let title: String?

        /// The bool/text value of the feature
        public let values: [GameVersion.FeatureValue]?

        // sourcery:inline:GameVersion.Feature.Codable

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey {
            case identifier = "id"
            case category
            case description
            case position
            case title
            case values
        }

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public init(from decoder: Decoder) throws {
            // Find proper container, and decode the identifier right away. This is the only mandatory property.
            let container: KeyedDecodingContainer<GameVersion.Feature.CodingKeys>?
            if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
                identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
                container = keyedContainer
            } else {
                let singleContainer = try decoder.singleValueContainer()
                identifier = try singleContainer.decode(Identifier.self)
                container = nil
            }
            // Extended decoding - any other property than identifier is optional
            category = try container?.decodeIfPresent(Category.self, forKey: .category) ?? nil
            description = try container?.decodeIfPresent(String.self, forKey: .description) ?? nil
            position = try container?.decodeIfPresent(Int.self, forKey: .position) ?? nil
            title = try container?.decodeIfPresent(String.self, forKey: .title) ?? nil
            values = try container?.decodeIfPresent([GameVersion.FeatureValue].self, forKey: .values) ?? nil
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
            try container.encodeIfPresent(category, forKey: .category)
            try container.encodeIfPresent(description, forKey: .description)
            try container.encodeIfPresent(position, forKey: .position)
            try container.encodeIfPresent(title, forKey: .title)
            try container.encodeIfPresent(values, forKey: .values)
        }

        /// Returns true if all properties but the identifier are `nil`.
        public func isSingleValueContainable() -> Bool {
            return  // true, if all properties are nil
                category == nil &&
                description == nil &&
                position == nil &&
                title == nil &&
                values == nil &&
                true // Have not found a way to trim the last && with sourcery
        }
        // sourcery:end
    }
}
