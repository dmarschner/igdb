import Foundation
import Apicalypse

extension Game.Website: Composable {
    // sourcery:inline:Game.Website.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Game.Website.identifier: return [CodingKeys.identifier]
        case \Game.Website.trusted: return [CodingKeys.trusted]
        case \Game.Website.category: return [CodingKeys.category]
        case \Game.Website.url: return [CodingKeys.url]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
