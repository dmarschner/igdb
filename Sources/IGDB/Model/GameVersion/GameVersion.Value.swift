import Foundation

extension GameVersion {

    /// [Game Version Feature Value](https://api-docs.igdb.com/#game-version-feature-value)
    ///
    /// The bool/text value of the feature
    ///
    /// API path: [/game_version_feature_values](https://api-v3.igdb.com/game_version_feature_values)
    public struct Value: Identifiable, AutoComposable, Codable {

        /// Game Version Feature Value Included
        public enum Included: Int, Codable {
            case notIncluded
            case included
            case preOrderOnly
        }

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// The version/edition this value refers to
        public let game: Game.Identifier?

        /// The id of the game feature
        public let gameFeature: GameVersion.Feature.Identifier?

        /// The boole value of this feature
        public let includedFeature: Included?

        /// The text value of this feature
        public let note: String?
    }
}
