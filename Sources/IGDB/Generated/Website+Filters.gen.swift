// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Website: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case trusted(Postfix, Bool?)
        case category(Postfix, Category?)
        case url(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .trusted:
                return "trusted"
            case .category:
                return "category"
            case .url:
                return "url"
            }
        }
    }
}
