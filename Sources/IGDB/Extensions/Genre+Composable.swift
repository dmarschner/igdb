import Foundation
import Apicalypse

extension Genre: Composable {
    // sourcery:inline:Genre.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Genre>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Genre.identifier: return CodingKeys.identifier
        case \Genre.createdAt: return CodingKeys.createdAt
        case \Genre.updatedAt: return CodingKeys.updatedAt
        case \Genre.name: return CodingKeys.name
        case \Genre.slug: return CodingKeys.slug
        case \Genre.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
