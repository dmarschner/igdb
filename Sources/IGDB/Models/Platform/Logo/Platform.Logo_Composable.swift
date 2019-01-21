import Foundation

extension Platform.Logo: Composable {
    // sourcery:inline:Platform.Logo.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \Platform.Logo.identifier: return [CodingKeys.identifier]
        case \Platform.Logo.isTransparent: return [CodingKeys.isTransparent]
        case \Platform.Logo.animated: return [CodingKeys.animated]
        case \Platform.Logo.url: return [CodingKeys.url]
        case \Platform.Logo.height: return [CodingKeys.height]
        case \Platform.Logo.width: return [CodingKeys.width]
        case \Platform.Logo.imageId: return [CodingKeys.imageId]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
