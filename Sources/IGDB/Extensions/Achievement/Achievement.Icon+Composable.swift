import Foundation
import Apicalypse

extension Achievement.Icon: Composable {
    // sourcery:inline:Achievement.Icon.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Achievement.Icon>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Achievement.Icon.identifier: return CodingKeys.identifier
        case \Achievement.Icon.isTransparent: return CodingKeys.isTransparent
        case \Achievement.Icon.animated: return CodingKeys.animated
        case \Achievement.Icon.url: return CodingKeys.url
        case \Achievement.Icon.height: return CodingKeys.height
        case \Achievement.Icon.width: return CodingKeys.width
        case \Achievement.Icon.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
