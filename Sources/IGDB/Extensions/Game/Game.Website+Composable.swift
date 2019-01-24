import Foundation
import Apicalypse

extension Game.Website: Composable {
    // sourcery:inline:Game.Website.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Game.Website>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Game.Website.identifier: return CodingKeys.identifier
        case \Game.Website.trusted: return CodingKeys.trusted
        case \Game.Website.category: return CodingKeys.category
        case \Game.Website.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
