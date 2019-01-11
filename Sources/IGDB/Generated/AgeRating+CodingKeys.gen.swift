// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension AgeRating {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case category
        case rating
        case contentDescriptions = "content_descriptions"
        case ratingCoverUrl = "rating_cover_url"
        case synopsis
    }
}
