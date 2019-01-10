import Foundation

public extension AgeRating {

    /// [Age Rating Content Description](https://api-docs.igdb.com/?swift#age-rating-content-description)
    ///
    /// API path: [/age_rating_content_descriptions](https://api-v3.igdb.com/age_rating_content_descriptions)
    public final class ContentDescription: Endpoint, Composable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, CodingKey, Field {
            case category, description
        }

        /// The organization that has issued a specific rating
        public let category: Category?

        /// Descriptive reason as to why the rating has been assigned. e.g. "Strong Language", "Animated Blood", ...
        public let description: String?
    }
}
