import Foundation
import Apicalypse

extension Game.Artwork: Composable {
    // sourcery:inline:Game.Artwork.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Game.Artwork.identifier: return [CodingKeys.identifier]
        case \Game.Artwork.isTransparent: return [CodingKeys.isTransparent]
        case \Game.Artwork.animated: return [CodingKeys.animated]
        case \Game.Artwork.url: return [CodingKeys.url]
        case \Game.Artwork.height: return [CodingKeys.height]
        case \Game.Artwork.width: return [CodingKeys.width]
        case \Game.Artwork.imageId: return [CodingKeys.imageId]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
