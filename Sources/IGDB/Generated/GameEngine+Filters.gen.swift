// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension GameEngine: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case companies(Postfix, Expander<[Company]>?)
        case description(Postfix, String?)
        case logo(Postfix, Expander<Logo>?)
        case name(Postfix, String?)
        case platforms(Postfix, Expander<[Platform]>?)
        case slug(Postfix, String?)
        case url(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .companies:
                return "companies"
            case .description:
                return "description"
            case .logo:
                return "logo"
            case .name:
                return "name"
            case .platforms:
                return "platforms"
            case .slug:
                return "slug"
            case .url:
                return "url"
            }
        }
    }
}
