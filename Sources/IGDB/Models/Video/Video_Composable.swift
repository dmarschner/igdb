import Foundation
import Apicalypse

extension Video: Composable {
    // sourcery:inline:Video.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Video.identifier: return [CodingKeys.identifier]
        case \Video.name: return [CodingKeys.name]
        case \Video.videoId: return [CodingKeys.videoId]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
