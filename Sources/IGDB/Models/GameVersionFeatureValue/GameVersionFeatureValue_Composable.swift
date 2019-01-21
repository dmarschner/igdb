import Foundation

extension GameVersionFeatureValue: Composable {
    // sourcery:inline:GameVersionFeatureValue.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \GameVersionFeatureValue.identifier: return [CodingKeys.identifier]
        case \GameVersionFeatureValue.game: return [CodingKeys.game]
        case \GameVersionFeatureValue.gameFeature: return [CodingKeys.gameFeature]
        case \GameVersionFeatureValue.includedFeature: return [CodingKeys.includedFeature]
        case \GameVersionFeatureValue.note: return [CodingKeys.note]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
