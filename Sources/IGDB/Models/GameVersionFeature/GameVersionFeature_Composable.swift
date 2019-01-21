import Foundation

extension GameVersionFeature: Composable {
    // sourcery:inline:GameVersionFeature.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \GameVersionFeature.identifier: return [CodingKeys.identifier]
        case \GameVersionFeature.category: return [CodingKeys.category]
        case \GameVersionFeature.description: return [CodingKeys.description]
        case \GameVersionFeature.position: return [CodingKeys.position]
        case \GameVersionFeature.title: return [CodingKeys.title]
        case \GameVersionFeature.values: return [CodingKeys.values]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
