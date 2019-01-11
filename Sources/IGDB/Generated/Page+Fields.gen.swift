// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Page: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case background
        case battlenet
        case category
        case color
        case company
        case country
        case description
        case feed
        case game
        case name
        case origin
        case pageFollowsCount = "page_follows_count"
        case pageLogo = "page_logo"
        case slug
        case subCategory = "sub_category"
        case uplay
        case url
        case websites
    }
}
