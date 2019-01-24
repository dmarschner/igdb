import Foundation

extension GameVersion {

    /// [Game Version Feature Value](https://api-docs.igdb.com/#game-version-feature-value)
    ///
    /// The bool/text value of the feature
    public final class FeatureValue: Identifiable, Codable {

        /// Game Version Feature Value Included
        public enum Included: Int, Codable, CustomStringConvertible {
            case notIncluded
            case included
            case preOrderOnly

            /// A textual representation of this instance.
            public var description: String {
                return String(self.rawValue)
            }
        }

        /// The API endpoint to request these entities from.
        /// Path: [/game_version_feature_values](https://api-v3.igdb.com/game_version_feature_values)
        public static let requestPath: String = "game_version_feature_values"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// The version/edition this value refers to
        public let game: Game?

        /// The id of the game feature
        public let gameFeature: GameVersion.Feature?

        /// The boole value of this feature
        public let includedFeature: Included?

        /// The text value of this feature
        public let note: String?

        // sourcery:inline:GameVersion.FeatureValue.Codable

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey {
            case identifier = "id"
            case game
            case gameFeature = "game_feature"
            case includedFeature = "included_feature"
            case note
        }

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public init(from decoder: Decoder) throws {
            // Find proper container, and decode the identifier right away. This is the only mandatory property.
            let container: KeyedDecodingContainer<GameVersion.FeatureValue.CodingKeys>?
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
            gameFeature = try container?.decodeIfPresent(GameVersion.Feature.self, forKey: .gameFeature) ?? nil
            includedFeature = try container?.decodeIfPresent(Included.self, forKey: .includedFeature) ?? nil
            note = try container?.decodeIfPresent(String.self, forKey: .note) ?? nil
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
            try container.encodeIfPresent(gameFeature, forKey: .gameFeature)
            try container.encodeIfPresent(includedFeature, forKey: .includedFeature)
            try container.encodeIfPresent(note, forKey: .note)
        }

        /// Returns true if all properties but the identifier are `nil`.
        public func isSingleValueContainable() -> Bool {
            return  // true, if all properties are nil
                game == nil &&
                gameFeature == nil &&
                includedFeature == nil &&
                note == nil &&
                true // Have not found a way to trim the last && with sourcery
        }
        // sourcery:end
    }
}
