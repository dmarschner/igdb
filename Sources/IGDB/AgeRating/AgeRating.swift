import Foundation

/// [Age Rating](https://api-docs.igdb.com/?swift#age-rating) according to various rating organisations
///
/// API path: [/age_ratings](https://api-v3.igdb.com/age_ratings)
public struct AgeRating: Codable, Identifiable, Composable {

    /// The organization that has issued a specific rating
    public let category: Category?

    /// The title of an age rating
    public let rating: Rating?

    /// Reference ID for Age Rating Content Description
    public let contentDescriptions: Expander<[ContentDescription]>?

    /// The url for the image of a age rating
    public let ratingCoverUrl: String?

    /// A free text motivating a rating
    public let synopsis: String?
}

extension AgeRating {
}

extension AgeRating  {
}
