import Foundation

public extension Game.Version.Feature {

    /// [Game Version Feature Value](https://api-docs.igdb.com/#game-version-feature-value)
    ///
    /// The bool/text value of the feature
    ///
    /// API path: [/game_version_feature_values](https://api-v3.igdb.com/game_version_feature_values)
    public struct Value: Codable, Identifiable, Composable {

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

extension Value {
}

extension Value  {
}
