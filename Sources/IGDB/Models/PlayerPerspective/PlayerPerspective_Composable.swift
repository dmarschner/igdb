import Foundation
import Apicalypse

extension PlayerPerspective: Composable {
    // sourcery:inline:PlayerPerspective.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \PlayerPerspective.identifier: return [CodingKeys.identifier]
        case \PlayerPerspective.createdAt: return [CodingKeys.createdAt]
        case \PlayerPerspective.updatedAt: return [CodingKeys.updatedAt]
        case \PlayerPerspective.name: return [CodingKeys.name]
        case \PlayerPerspective.slug: return [CodingKeys.slug]
        case \PlayerPerspective.url: return [CodingKeys.url]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
