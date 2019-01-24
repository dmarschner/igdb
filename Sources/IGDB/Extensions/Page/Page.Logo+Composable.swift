import Foundation
import Apicalypse

extension Page.Logo: Composable {
    // sourcery:inline:Page.Logo.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Page.Logo>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Page.Logo.identifier: return CodingKeys.identifier
        case \Page.Logo.isTransparent: return CodingKeys.isTransparent
        case \Page.Logo.animated: return CodingKeys.animated
        case \Page.Logo.url: return CodingKeys.url
        case \Page.Logo.height: return CodingKeys.height
        case \Page.Logo.width: return CodingKeys.width
        case \Page.Logo.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
