// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Feed: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case content
        case feedLikesCount = "feed_likes_count"
        case feedVideo = "feed_video"
        case games
        case meta
        case publishedAt = "published_at"
        case pulse
        case slug
        case title
        case uid
        case url
        case user
    }
}
