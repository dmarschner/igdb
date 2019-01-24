import Foundation
import Apicalypse

extension GameVersion.FeatureValue: Composable {
    // sourcery:inline:GameVersion.FeatureValue.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<GameVersion.FeatureValue>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \GameVersion.FeatureValue.identifier: return CodingKeys.identifier
        case \GameVersion.FeatureValue.game: return CodingKeys.game
        case \GameVersion.FeatureValue.gameFeature: return CodingKeys.gameFeature
        case \GameVersion.FeatureValue.includedFeature: return CodingKeys.includedFeature
        case \GameVersion.FeatureValue.note: return CodingKeys.note
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
