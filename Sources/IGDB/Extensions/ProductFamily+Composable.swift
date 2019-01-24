import Foundation
import Apicalypse

extension ProductFamily: Composable {
    // sourcery:inline:ProductFamily.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<ProductFamily>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \ProductFamily.identifier: return CodingKeys.identifier
        case \ProductFamily.name: return CodingKeys.name
        case \ProductFamily.slug: return CodingKeys.slug
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
