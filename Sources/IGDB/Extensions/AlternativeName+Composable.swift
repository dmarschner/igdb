import Foundation
import Apicalypse

extension AlternativeName: Composable {
    // sourcery:inline:AlternativeName.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<AlternativeName>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \AlternativeName.identifier: return CodingKeys.identifier
        case \AlternativeName.comment: return CodingKeys.comment
        case \AlternativeName.name: return CodingKeys.name
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
