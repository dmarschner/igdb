import Foundation
import Apicalypse

extension Page.Website: Composable {
    // sourcery:inline:Page.Website.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Page.Website>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Page.Website.identifier: return CodingKeys.identifier
        case \Page.Website.trusted: return CodingKeys.trusted
        case \Page.Website.category: return CodingKeys.category
        case \Page.Website.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
