// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Achievement: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case icon(Postfix, Expander<Icon>?)
        case category(Postfix, Category?)
        case description(Postfix, String?)
        case externalId(Postfix, String?)
        case game(Postfix, Game.Identifier?)
        case language(Postfix, Region?)
        case name(Postfix, String?)
        case ownersPercentage(Postfix, Double?)
        case rank(Postfix, Rank?)
        case slug(Postfix, String?)
        case tags(Postfix, [Tag]?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .icon:
                return "achievement_icon"
            case .category:
                return "category"
            case .description:
                return "description"
            case .externalId:
                return "external_id"
            case .game:
                return "game"
            case .language:
                return "language"
            case .name:
                return "name"
            case .ownersPercentage:
                return "owners_percentage"
            case .rank:
                return "rank"
            case .slug:
                return "slug"
            case .tags:
                return "tags"
            }
        }
    }
}
