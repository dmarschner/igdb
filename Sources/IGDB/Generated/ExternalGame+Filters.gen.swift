// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension ExternalGame: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case category(Postfix, Category?)
        case game(Postfix, Game.Identifier?)
        case name(Postfix, String?)
        case uid(Postfix, String?)
        case url(Postfix, String?)
        case year(Postfix, Int?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .category:
                return "category"
            case .game:
                return "game"
            case .name:
                return "name"
            case .uid:
                return "uid"
            case .url:
                return "url"
            case .year:
                return "y"
            }
        }
    }
}
