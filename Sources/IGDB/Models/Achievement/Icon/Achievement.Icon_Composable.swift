import Foundation

extension Achievement.Icon: Composable {
    // sourcery:inline:Achievement.Icon.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Achievement.Icon>) throws -> [CodingKey] {
        switch keyPath {
        case \Achievement.Icon.identifier: return [CodingKeys.identifier]
        case \Achievement.Icon.isTransparent: return [CodingKeys.isTransparent]
        case \Achievement.Icon.animated: return [CodingKeys.animated]
        case \Achievement.Icon.url: return [CodingKeys.url]
        case \Achievement.Icon.height: return [CodingKeys.height]
        case \Achievement.Icon.width: return [CodingKeys.width]
        case \Achievement.Icon.imageId: return [CodingKeys.imageId]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
