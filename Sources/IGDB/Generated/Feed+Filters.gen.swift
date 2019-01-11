// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Feed: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case category(Postfix, Category?)
        case content(Postfix, String?)
        case feedLikesCount(Postfix, Int?)
        case feedVideo(Postfix, Expander<Video>?)
        case games(Postfix, Expander<[Game]>?)
        case meta(Postfix, String?)
        case publishedAt(Postfix, Date?)
        case pulse(Postfix, Pulse.Identifier?)
        case slug(Postfix, String?)
        case title(Postfix, String?)
        case uid(Postfix, String?)
        case url(Postfix, String?)
        case user(Postfix, Int?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .category:
                return "category"
            case .content:
                return "content"
            case .feedLikesCount:
                return "feed_likes_count"
            case .feedVideo:
                return "feed_video"
            case .games:
                return "games"
            case .meta:
                return "meta"
            case .publishedAt:
                return "published_at"
            case .pulse:
                return "pulse"
            case .slug:
                return "slug"
            case .title:
                return "title"
            case .uid:
                return "uid"
            case .url:
                return "url"
            case .user:
                return "user"
            }
        }
    }
}
