// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension TimeToBeat: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case completely(Postfix, Int?)
        case hastly(Postfix, Int?)
        case normally(Postfix, Int?)
        case game(Postfix, Game.Identifier?)

        public var stringValue: String {
            switch self {
            case .completely:
                return "completely"
            case .hastly:
                return "hastly"
            case .normally:
                return "normally"
            case .game:
                return "game"
            }
        }
    }
}
