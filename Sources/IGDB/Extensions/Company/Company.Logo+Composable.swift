import Foundation
import Apicalypse

extension Company.Logo: Composable {
    // sourcery:inline:Company.Logo.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Company.Logo>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Company.Logo.identifier: return CodingKeys.identifier
        case \Company.Logo.isTransparent: return CodingKeys.isTransparent
        case \Company.Logo.animated: return CodingKeys.animated
        case \Company.Logo.url: return CodingKeys.url
        case \Company.Logo.height: return CodingKeys.height
        case \Company.Logo.width: return CodingKeys.width
        case \Company.Logo.imageId: return CodingKeys.imageId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
