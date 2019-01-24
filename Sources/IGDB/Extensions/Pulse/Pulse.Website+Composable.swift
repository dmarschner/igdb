import Foundation
import Apicalypse

extension Pulse.Website: Composable {
    // sourcery:inline:Pulse.Website.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Pulse.Website>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Pulse.Website.identifier: return CodingKeys.identifier
        case \Pulse.Website.trusted: return CodingKeys.trusted
        case \Pulse.Website.category: return CodingKeys.category
        case \Pulse.Website.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
