// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension GameVersion: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case features(Postfix, Expander<[GameVersionFeature]>?)
        case game(Postfix, Expander<Game>?)
        case games(Postfix, Expander<[Game]>?)
        case url(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .features:
                return "features"
            case .game:
                return "game"
            case .games:
                return "games"
            case .url:
                return "url"
            }
        }
    }
}
