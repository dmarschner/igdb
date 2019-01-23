import Foundation
import Apicalypse

extension GameEngine.Logo: Composable {
    // sourcery:inline:GameEngine.Logo.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \GameEngine.Logo.identifier: return [CodingKeys.identifier]
        case \GameEngine.Logo.isTransparent: return [CodingKeys.isTransparent]
        case \GameEngine.Logo.animated: return [CodingKeys.animated]
        case \GameEngine.Logo.url: return [CodingKeys.url]
        case \GameEngine.Logo.height: return [CodingKeys.height]
        case \GameEngine.Logo.width: return [CodingKeys.width]
        case \GameEngine.Logo.imageId: return [CodingKeys.imageId]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
