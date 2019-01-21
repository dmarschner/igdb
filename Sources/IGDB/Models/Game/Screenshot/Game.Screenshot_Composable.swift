import Foundation

extension Game.Screenshot: Composable {
    // sourcery:inline:Game.Screenshot.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \Game.Screenshot.identifier: return [CodingKeys.identifier]
        case \Game.Screenshot.isTransparent: return [CodingKeys.isTransparent]
        case \Game.Screenshot.animated: return [CodingKeys.animated]
        case \Game.Screenshot.url: return [CodingKeys.url]
        case \Game.Screenshot.height: return [CodingKeys.height]
        case \Game.Screenshot.width: return [CodingKeys.width]
        case \Game.Screenshot.imageId: return [CodingKeys.imageId]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
