import Foundation

public extension Game {

    /// [Game Version Feature](https://api-docs.igdb.com/#game-version-feature)
    ///
    /// Features and descriptions of what makes each version/edition different from the main game
    ///
    /// API path: [/game_version_features](https://api-v3.igdb.com/game_version_features)
    public struct Feature: Codable, Identifiable, Composable {

        /// Game Version Feature Category
        public enum Category: Int, Codable {
            case boolean
            case description
        }

        // sourcery:inline:Game.Feature.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
            case identifier = "id"
            case category
            case description
            case position
            case title
            case values
        }
        // sourcery:end

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
        public let values: Expander<[Value]>?
    }
}

extension Game.Feature {

    /// [Game Version Feature Value](https://api-docs.igdb.com/#game-version-feature-value)
    ///
    /// The bool/text value of the feature
    ///
    /// API path: [/game_version_feature_values](https://api-v3.igdb.com/game_version_feature_values)
    public struct Value: Codable, Identifiable, Composable {

        /// Game Version Feature Value Included
        public enum Included: Int, Codable {
            case notIncluded
            case included
            case preOrderOnly
        }

        // sourcery:inline:Game.Feature.Value.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
            case identifier = "id"
            case game
            case gameFeature = "game_feature"
            case includedFeature = "included_feature"
            case note
        }
        // sourcery:end

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// The version/edition this value refers to
        public let game: Game.Identifier?

        /// The id of the game feature
        public let gameFeature: Game.Feature.Identifier?

        /// The boole value of this feature
        public let includedFeature: Included?

        /// The text value of this feature
        public let note: String?
    }
}
