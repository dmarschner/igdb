import Foundation

extension Character.MugShot: Composable {
    // sourcery:inline:Character.MugShot.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \Character.MugShot.identifier: return [CodingKeys.identifier]
        case \Character.MugShot.isTransparent: return [CodingKeys.isTransparent]
        case \Character.MugShot.animated: return [CodingKeys.animated]
        case \Character.MugShot.url: return [CodingKeys.url]
        case \Character.MugShot.height: return [CodingKeys.height]
        case \Character.MugShot.width: return [CodingKeys.width]
        case \Character.MugShot.imageId: return [CodingKeys.imageId]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
