import Foundation
import Apicalypse

extension Game.Cover: Composable {
    // sourcery:inline:Game.Cover.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Game.Cover>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Game.Cover.identifier: return CodingKeys.identifier
        case \Game.Cover.isTransparent: return CodingKeys.isTransparent
        case \Game.Cover.animated: return CodingKeys.animated
        case \Game.Cover.url: return CodingKeys.url
        case \Game.Cover.height: return CodingKeys.height
        case \Game.Cover.width: return CodingKeys.width
        case \Game.Cover.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
