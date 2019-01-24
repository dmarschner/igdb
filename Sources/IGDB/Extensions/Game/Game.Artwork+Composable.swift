import Foundation
import Apicalypse

extension Game.Artwork: Composable {
    // sourcery:inline:Game.Artwork.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Game.Artwork>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Game.Artwork.identifier: return CodingKeys.identifier
        case \Game.Artwork.isTransparent: return CodingKeys.isTransparent
        case \Game.Artwork.animated: return CodingKeys.animated
        case \Game.Artwork.url: return CodingKeys.url
        case \Game.Artwork.height: return CodingKeys.height
        case \Game.Artwork.width: return CodingKeys.width
        case \Game.Artwork.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
