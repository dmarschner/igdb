import Foundation

extension Page.Background: Composable {
    // sourcery:inline:Page.Background.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Page.Background>) throws -> [CodingKey] {
        switch keyPath {
        case \Page.Background.identifier: return [CodingKeys.identifier]
        case \Page.Background.isTransparent: return [CodingKeys.isTransparent]
        case \Page.Background.animated: return [CodingKeys.animated]
        case \Page.Background.url: return [CodingKeys.url]
        case \Page.Background.height: return [CodingKeys.height]
        case \Page.Background.width: return [CodingKeys.width]
        case \Page.Background.imageId: return [CodingKeys.imageId]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
