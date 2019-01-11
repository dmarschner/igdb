// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Achievement {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case icon = "achievement_icon"
        case category
        case description
        case externalId = "external_id"
        case game
        case language
        case name
        case ownersPercentage = "owners_percentage"
        case rank
        case slug
        case tags
    }
}
