import Foundation
import Apicalypse

extension Platform.Logo: Composable {
    // sourcery:inline:Platform.Logo.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Platform.Logo>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Platform.Logo.identifier: return CodingKeys.identifier
        case \Platform.Logo.isTransparent: return CodingKeys.isTransparent
        case \Platform.Logo.animated: return CodingKeys.animated
        case \Platform.Logo.url: return CodingKeys.url
        case \Platform.Logo.height: return CodingKeys.height
        case \Platform.Logo.width: return CodingKeys.width
        case \Platform.Logo.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
