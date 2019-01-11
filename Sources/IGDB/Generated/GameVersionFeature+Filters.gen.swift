// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension GameVersionFeature: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case category(Postfix, Category?)
        case description(Postfix, String?)
        case position(Postfix, Int?)
        case title(Postfix, String?)
        case values(Postfix, Expander<[GameVersionValue]>?)

        public var stringValue: String {
            switch self {
            case .category:
                return "category"
            case .description:
                return "description"
            case .position:
                return "position"
            case .title:
                return "title"
            case .values:
                return "values"
            }
        }
    }
}
