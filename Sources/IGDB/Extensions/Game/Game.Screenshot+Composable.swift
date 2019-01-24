import Foundation
import Apicalypse

extension Game.Screenshot: Composable {
    // sourcery:inline:Game.Screenshot.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Game.Screenshot>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Game.Screenshot.identifier: return CodingKeys.identifier
        case \Game.Screenshot.isTransparent: return CodingKeys.isTransparent
        case \Game.Screenshot.animated: return CodingKeys.animated
        case \Game.Screenshot.url: return CodingKeys.url
        case \Game.Screenshot.height: return CodingKeys.height
        case \Game.Screenshot.width: return CodingKeys.width
        case \Game.Screenshot.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
