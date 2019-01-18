import Foundation

/// [Age Rating Content Description](https://api-docs.igdb.com/?swift#age-rating-content-description)
public struct AgeRatingContentDescription: Identifiable {

    /// The API endpoint to request these entities from.
    /// Path: [/age_rating_content_descriptions](https://api-v3.igdb.com/age_rating_content_descriptions)
    public static let requestPath: String = "age_rating_content_descriptions"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The organization that has issued a specific rating
    public let category: AgeRating.Category?

    /// Descriptive reason as to why the rating has been assigned. e.g. "Strong Language", "Animated Blood", ...
    public let description: String?
}
