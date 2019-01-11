// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension ContentDescription: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case category(Postfix, AgeRating.Category?)
        case description(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .category:
                return "category"
            case .description:
                return "description"
            }
        }
    }
}
