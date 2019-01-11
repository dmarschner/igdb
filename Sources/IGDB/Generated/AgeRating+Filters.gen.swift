// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension AgeRating: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case category(Postfix, Category?)
        case rating(Postfix, Rating?)
        case contentDescriptions(Postfix, Expander<[ContentDescription]>?)
        case ratingCoverUrl(Postfix, String?)
        case synopsis(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .category:
                return "category"
            case .rating:
                return "rating"
            case .contentDescriptions:
                return "content_descriptions"
            case .ratingCoverUrl:
                return "rating_cover_url"
            case .synopsis:
                return "synopsis"
            }
        }
    }
}
