import Foundation
import Apicalypse

extension TimeToBeat: Composable {
    // sourcery:inline:TimeToBeat.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<TimeToBeat>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \TimeToBeat.identifier: return CodingKeys.identifier
        case \TimeToBeat.completely: return CodingKeys.completely
        case \TimeToBeat.hastly: return CodingKeys.hastly
        case \TimeToBeat.normally: return CodingKeys.normally
        case \TimeToBeat.game: return CodingKeys.game
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
