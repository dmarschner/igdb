import Foundation
import Apicalypse

extension AgeRatingContentDescription: Composable {
    // sourcery:inline:AgeRatingContentDescription.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \AgeRatingContentDescription.identifier: return [CodingKeys.identifier]
        case \AgeRatingContentDescription.category: return [CodingKeys.category]
        case \AgeRatingContentDescription.description: return [CodingKeys.description]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
