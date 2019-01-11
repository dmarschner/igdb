// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension InvolvedCompany: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case company(Postfix, Expander<Company>?)
        case developer(Postfix, Bool?)
        case game(Postfix, Expander<Game>?)
        case porting(Postfix, Bool?)
        case publisher(Postfix, Bool?)
        case supporting(Postfix, Bool?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .company:
                return "company"
            case .developer:
                return "developer"
            case .game:
                return "game"
            case .porting:
                return "porting"
            case .publisher:
                return "publisher"
            case .supporting:
                return "supporting"
            }
        }
    }
}
