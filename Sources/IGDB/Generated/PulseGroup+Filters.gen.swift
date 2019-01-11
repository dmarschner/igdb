// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension PulseGroup: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case game(Postfix, Game.Identifier?)
        case name(Postfix, String?)
        case publishedAt(Postfix, Date?)
        case pulses(Postfix, [Pulse.Identifier]?)
        case tags(Postfix, [Tag]?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .game:
                return "game"
            case .name:
                return "name"
            case .publishedAt:
                return "published_at"
            case .pulses:
                return "pulses"
            case .tags:
                return "tags"
            }
        }
    }
}
