import Foundation
import Apicalypse

extension ProductFamily: Composable {
    // sourcery:inline:ProductFamily.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \ProductFamily.identifier: return [CodingKeys.identifier]
        case \ProductFamily.name: return [CodingKeys.name]
        case \ProductFamily.slug: return [CodingKeys.slug]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
