import Foundation
import Apicalypse

extension Pulse.Group: Composable {
    // sourcery:inline:Pulse.Group.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Pulse.Group>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Pulse.Group.identifier: return CodingKeys.identifier
        case \Pulse.Group.createdAt: return CodingKeys.createdAt
        case \Pulse.Group.updatedAt: return CodingKeys.updatedAt
        case \Pulse.Group.game: return CodingKeys.game
        case \Pulse.Group.name: return CodingKeys.name
        case \Pulse.Group.publishedAt: return CodingKeys.publishedAt
        case \Pulse.Group.pulses: return CodingKeys.pulses
        case \Pulse.Group.tags: return CodingKeys.tags
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
