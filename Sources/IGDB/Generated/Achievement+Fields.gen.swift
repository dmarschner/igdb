// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Achievement: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
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
