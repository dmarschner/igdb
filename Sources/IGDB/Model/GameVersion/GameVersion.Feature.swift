import Foundation

extension GameVersion {

    /// [Game Version Feature](https://api-docs.igdb.com/#game-version-feature)
    ///
    /// Features and descriptions of what makes each version/edition different from the main game
    ///
    /// API path: [/game_version_features](https://api-v3.igdb.com/game_version_features)
    public struct Feature: Identifiable, AutoComposable, Codable {

        /// Game Version Feature Category
        public enum Category: Int, Codable { // swiftlint:disable:this nesting
            case boolean
            case description
        }

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
