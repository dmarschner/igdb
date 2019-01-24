import Foundation
import Apicalypse

extension Keyword: Composable {
    // sourcery:inline:Keyword.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Keyword>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Keyword.identifier: return CodingKeys.identifier
        case \Keyword.createdAt: return CodingKeys.createdAt
        case \Keyword.updatedAt: return CodingKeys.updatedAt
        case \Keyword.name: return CodingKeys.name
        case \Keyword.slug: return CodingKeys.slug
        case \Keyword.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
