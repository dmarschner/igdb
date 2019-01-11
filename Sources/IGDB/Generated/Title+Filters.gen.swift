// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Title: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case description(Postfix, String?)
        case games(Postfix, Expander<[Game]>?)
        case name(Postfix, String?)
        case slug(Postfix, String?)
        case url(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .description:
                return "description"
            case .games:
                return "games"
            case .name:
                return "name"
            case .slug:
                return "slug"
            case .url:
                return "url"
            }
        }
    }
}
