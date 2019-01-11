// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension AlternativeName: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case comment(Postfix, String?)
        case name(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .comment:
                return "comment"
            case .name:
                return "name"
            }
        }
    }
}
