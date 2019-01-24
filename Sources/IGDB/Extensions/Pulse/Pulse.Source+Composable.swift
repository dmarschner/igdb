import Foundation
import Apicalypse

extension Pulse.Source: Composable {
    // sourcery:inline:Pulse.Source.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Pulse.Source>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Pulse.Source.identifier: return CodingKeys.identifier
        case \Pulse.Source.game: return CodingKeys.game
        case \Pulse.Source.name: return CodingKeys.name
        case \Pulse.Source.page: return CodingKeys.page
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
