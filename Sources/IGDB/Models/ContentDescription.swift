import Foundation

/// [Age Rating Content Description](https://api-docs.igdb.com/?swift#age-rating-content-description)
///
/// API path: [/age_rating_content_descriptions](https://api-v3.igdb.com/age_rating_content_descriptions)
public struct ContentDescription: Identifiable, AutoComposable, AutoFilterable, Codable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The organization that has issued a specific rating
    public let category: AgeRating.Category?

    /// Descriptive reason as to why the rating has been assigned. e.g. "Strong Language", "Animated Blood", ...
    public let description: String?
}
