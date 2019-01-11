import Foundation

extension AgeRating {

    /// The organization that has issued a specific rating
    public enum Category: Int, Codable {
        case pegi = 1
        case esrb
    }

    /// The title of an age rating // TODO: PEGI & ESRB merge enum is not that pretty and also redundant considering the category
    public enum Rating: Int, Codable {
        // PEGI
        case three = 1
        case seven
        case twelve
        case sixteen
        case eighteen
        // ESRB
        case ratingPending = 6
        case earlyChildhood
        case everyone
        case everyone10Plus
        case teen
        case mature
        case adultsOnly
    }

    /// [Age Rating Content Description](https://api-docs.igdb.com/?swift#age-rating-content-description)
    ///
    /// API path: [/age_rating_content_descriptions](https://api-v3.igdb.com/age_rating_content_descriptions)
    public struct ContentDescription: Identifiable, AutoComposable, Codable {

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// The organization that has issued a specific rating
        public let category: Category?

        /// Descriptive reason as to why the rating has been assigned. e.g. "Strong Language", "Animated Blood", ...
        public let description: String?
    }
}
