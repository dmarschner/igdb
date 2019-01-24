import Foundation
import Apicalypse

extension Video: Composable {
    // sourcery:inline:Video.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Video>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Video.identifier: return CodingKeys.identifier
        case \Video.name: return CodingKeys.name
        case \Video.videoId: return CodingKeys.videoId
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
