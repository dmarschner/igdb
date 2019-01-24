import Foundation
import Apicalypse

extension GameVersion.Feature: Composable {
    // sourcery:inline:GameVersion.Feature.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<GameVersion.Feature>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \GameVersion.Feature.identifier: return CodingKeys.identifier
        case \GameVersion.Feature.category: return CodingKeys.category
        case \GameVersion.Feature.description: return CodingKeys.description
        case \GameVersion.Feature.position: return CodingKeys.position
        case \GameVersion.Feature.title: return CodingKeys.title
        case \GameVersion.Feature.values: return CodingKeys.values
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
