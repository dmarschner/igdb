// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension AgeRating: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case category
        case rating
        case contentDescriptions = "content_descriptions"
        case ratingCoverUrl = "rating_cover_url"
        case synopsis
    }
}
