import Foundation
import Apicalypse

extension GameEngine.Logo: Composable {
    // sourcery:inline:GameEngine.Logo.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<GameEngine.Logo>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \GameEngine.Logo.identifier: return CodingKeys.identifier
        case \GameEngine.Logo.isTransparent: return CodingKeys.isTransparent
        case \GameEngine.Logo.animated: return CodingKeys.animated
        case \GameEngine.Logo.url: return CodingKeys.url
        case \GameEngine.Logo.height: return CodingKeys.height
        case \GameEngine.Logo.width: return CodingKeys.width
        case \GameEngine.Logo.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
