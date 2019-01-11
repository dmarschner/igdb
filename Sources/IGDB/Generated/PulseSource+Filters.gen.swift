// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension PulseSource: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case game(Postfix, Expander<Game>?)
        case name(Postfix, String?)
        case page(Postfix, Expander<Page>?)

        public var stringValue: String {
            switch self {
            case .game:
                return "game"
            case .name:
                return "name"
            case .page:
                return "page"
            }
        }
    }
}
