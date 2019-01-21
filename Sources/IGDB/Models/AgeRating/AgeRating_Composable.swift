import Foundation

extension AgeRating: Composable {
    // sourcery:inline:AgeRating.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \AgeRating.identifier: return [CodingKeys.identifier]
        case \AgeRating.category: return [CodingKeys.category]
        case \AgeRating.rating: return [CodingKeys.rating]
        case \AgeRating.contentDescriptions: return [CodingKeys.contentDescriptions]
        case \AgeRating.ratingCoverUrl: return [CodingKeys.ratingCoverUrl]
        case \AgeRating.synopsis: return [CodingKeys.synopsis]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
