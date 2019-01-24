import Foundation
import Apicalypse

extension Company.Website: Composable {
    // sourcery:inline:Company.Website.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Company.Website>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Company.Website.identifier: return CodingKeys.identifier
        case \Company.Website.trusted: return CodingKeys.trusted
        case \Company.Website.category: return CodingKeys.category
        case \Company.Website.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
