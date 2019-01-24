import Foundation
import Apicalypse

extension PlayerPerspective: Composable {
    // sourcery:inline:PlayerPerspective.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<PlayerPerspective>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \PlayerPerspective.identifier: return CodingKeys.identifier
        case \PlayerPerspective.createdAt: return CodingKeys.createdAt
        case \PlayerPerspective.updatedAt: return CodingKeys.updatedAt
        case \PlayerPerspective.name: return CodingKeys.name
        case \PlayerPerspective.slug: return CodingKeys.slug
        case \PlayerPerspective.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
