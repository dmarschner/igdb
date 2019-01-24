import Foundation
import Apicalypse

extension Franchise: Composable {
    // sourcery:inline:Franchise.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Franchise>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Franchise.identifier: return CodingKeys.identifier
        case \Franchise.createdAt: return CodingKeys.createdAt
        case \Franchise.updatedAt: return CodingKeys.updatedAt
        case \Franchise.name: return CodingKeys.name
        case \Franchise.slug: return CodingKeys.slug
        case \Franchise.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
