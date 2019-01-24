import Foundation
import Apicalypse

extension AgeRating.ContentDescription: Composable {
    // sourcery:inline:AgeRating.ContentDescription.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<AgeRating.ContentDescription>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \AgeRating.ContentDescription.identifier: return CodingKeys.identifier
        case \AgeRating.ContentDescription.category: return CodingKeys.category
        case \AgeRating.ContentDescription.description: return CodingKeys.description
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
