// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension PlatformVersionCompany: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case comment(Postfix, String?)
        case company(Postfix, Expander<Company>?)
        case developer(Postfix, Bool?)
        case manufacturer(Postfix, Bool?)

        public var stringValue: String {
            switch self {
            case .comment:
                return "comment"
            case .company:
                return "company"
            case .developer:
                return "developer"
            case .manufacturer:
                return "manufacturer"
            }
        }
    }
}
