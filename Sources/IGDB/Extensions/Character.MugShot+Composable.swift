import Foundation
import Apicalypse

extension Character.MugShot: Composable {
    // sourcery:inline:Character.MugShot.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Character.MugShot>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Character.MugShot.identifier: return CodingKeys.identifier
        case \Character.MugShot.isTransparent: return CodingKeys.isTransparent
        case \Character.MugShot.animated: return CodingKeys.animated
        case \Character.MugShot.url: return CodingKeys.url
        case \Character.MugShot.height: return CodingKeys.height
        case \Character.MugShot.width: return CodingKeys.width
        case \Character.MugShot.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
