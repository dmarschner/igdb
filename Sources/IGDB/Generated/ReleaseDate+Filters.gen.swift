// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension ReleaseDate: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case category(Postfix, DateCategory?)
        case date(Postfix, Date?)
        case game(Postfix, Game.Identifier?)
        case human(Postfix, String?)
        case platform(Postfix, Expander<Platform>?)
        case region(Postfix, Region?)
        case month(Postfix, Int?)
        case year(Postfix, Int?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .category:
                return "category"
            case .date:
                return "date"
            case .game:
                return "game"
            case .human:
                return "human"
            case .platform:
                return "platform"
            case .region:
                return "region"
            case .month:
                return "m"
            case .year:
                return "y"
            }
        }
    }
}
