import Foundation
import Apicalypse

extension AgeRating: Composable {
    // sourcery:inline:AgeRating.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<AgeRating>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \AgeRating.identifier: return CodingKeys.identifier
        case \AgeRating.category: return CodingKeys.category
        case \AgeRating.rating: return CodingKeys.rating
        case \AgeRating.contentDescriptions: return CodingKeys.contentDescriptions
        case \AgeRating.ratingCoverUrl: return CodingKeys.ratingCoverUrl
        case \AgeRating.synopsis: return CodingKeys.synopsis
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
