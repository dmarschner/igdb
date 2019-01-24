import Foundation
import Apicalypse

extension Page.Background: Composable {
    // sourcery:inline:Page.Background.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Page.Background>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Page.Background.identifier: return CodingKeys.identifier
        case \Page.Background.isTransparent: return CodingKeys.isTransparent
        case \Page.Background.animated: return CodingKeys.animated
        case \Page.Background.url: return CodingKeys.url
        case \Page.Background.height: return CodingKeys.height
        case \Page.Background.width: return CodingKeys.width
        case \Page.Background.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
