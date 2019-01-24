import Foundation
import Apicalypse

extension Collection: Composable {
    // sourcery:inline:Collection.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Collection>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Collection.identifier: return CodingKeys.identifier
        case \Collection.createdAt: return CodingKeys.createdAt
        case \Collection.updatedAt: return CodingKeys.updatedAt
        case \Collection.name: return CodingKeys.name
        case \Collection.slug: return CodingKeys.slug
        case \Collection.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
