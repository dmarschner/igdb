import Foundation
import Apicalypse

extension Platform.Website: Composable {
    // sourcery:inline:Platform.Website.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Platform.Website>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Platform.Website.identifier: return CodingKeys.identifier
        case \Platform.Website.trusted: return CodingKeys.trusted
        case \Platform.Website.category: return CodingKeys.category
        case \Platform.Website.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
