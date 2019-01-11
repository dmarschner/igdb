// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Pulse: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case author(Postfix, String?)
        case image(Postfix, String?)
        case publishedAt(Postfix, Date?)
        case pulseSource(Postfix, Expander<PulseSource>?)
        case summary(Postfix, String?)
        case tags(Postfix, [Tag]?)
        case title(Postfix, String?)
        case uid(Postfix, String?)
        case videos(Postfix, [String]?)
        case website(Postfix, Expander<Website>?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .author:
                return "author"
            case .image:
                return "image"
            case .publishedAt:
                return "published_at"
            case .pulseSource:
                return "pulse_source"
            case .summary:
                return "summary"
            case .tags:
                return "tags"
            case .title:
                return "title"
            case .uid:
                return "uid"
            case .videos:
                return "videos"
            case .website:
                return "website"
            }
        }
    }
}
