import Foundation

/// [Game Version Feature Value](https://api-docs.igdb.com/#game-version-feature-value)
///
/// The bool/text value of the feature
public struct GameVersionFeatureValue: Identifiable {

    /// The API endpoint to request these entities from.
    /// Path: [/game_version_feature_values](https://api-v3.igdb.com/game_version_feature_values)
    public static let requestPath: String = "game_version_feature_values"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The version/edition this value refers to
    public let game: Game.Identifier?

    /// The id of the game feature
    public let gameFeature: GameVersionFeature.Identifier?

    /// The boole value of this feature
    public let includedFeature: Included?

    /// The text value of this feature
    public let note: String?
}
