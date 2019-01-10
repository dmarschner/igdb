import Foundation

public extension Game.Version {

    /// [Game Version Feature](https://api-docs.igdb.com/#game-version-feature)
    ///
    /// Features and descriptions of what makes each version/edition different from the main game
    ///
    /// API path: [/game_version_features](https://api-v3.igdb.com/game_version_features)
    public final class Feature: Endpoint, Composable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, CodingKey, Field {
            case category, description, position, title, values
        }

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
