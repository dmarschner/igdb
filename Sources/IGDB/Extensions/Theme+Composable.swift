import Foundation
import Apicalypse

extension Theme: Composable {
    // sourcery:inline:Theme.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Theme>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Theme.identifier: return CodingKeys.identifier
        case \Theme.createdAt: return CodingKeys.createdAt
        case \Theme.updatedAt: return CodingKeys.updatedAt
        case \Theme.name: return CodingKeys.name
        case \Theme.slug: return CodingKeys.slug
        case \Theme.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
