// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension GameVersionValue: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case game(Postfix, Game.Identifier?)
        case gameFeature(Postfix, GameVersionFeature.Identifier?)
        case includedFeature(Postfix, Included?)
        case note(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .game:
                return "game"
            case .gameFeature:
                return "game_feature"
            case .includedFeature:
                return "included_feature"
            case .note:
                return "note"
            }
        }
    }
}
