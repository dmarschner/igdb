import Foundation

extension Game.Cover: Composable {
    // sourcery:inline:Game.Cover.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Game.Cover.identifier: return [CodingKeys.identifier]
        case \Game.Cover.isTransparent: return [CodingKeys.isTransparent]
        case \Game.Cover.animated: return [CodingKeys.animated]
        case \Game.Cover.url: return [CodingKeys.url]
        case \Game.Cover.height: return [CodingKeys.height]
        case \Game.Cover.width: return [CodingKeys.width]
        case \Game.Cover.imageId: return [CodingKeys.imageId]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
