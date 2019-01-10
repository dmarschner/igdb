import Foundation

public extension Game.Version.Feature {

    /// [Game Version Feature Value](https://api-docs.igdb.com/#game-version-feature-value)
    ///
    /// The bool/text value of the feature
    ///
    /// API path: [/game_version_feature_values](https://api-v3.igdb.com/game_version_feature_values)
    public final class Value: Endpoint, Composable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, CodingKey, Field {
            case game, gameFeature, includedFeature, note
        }

        /// The version/edition this value refers to
        public let game: Expander<Game>?

        /// The id of the game feature
        public let gameFeature: Expander<Game.Version.Feature>?

        /// The boole value of this feature
        public let includedFeature: Included?

        /// The text value of this feature
        public let note: String?
    }
}
