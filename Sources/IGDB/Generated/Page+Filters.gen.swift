// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Page: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case background(Postfix, Expander<Background>?)
        case battlenet(Postfix, String?)
        case category(Postfix, Category?)
        case color(Postfix, Color?)
        case company(Postfix, Expander<Company>?)
        case country(Postfix, Int?)
        case description(Postfix, String?)
        case feed(Postfix, Expander<Feed>?)
        case game(Postfix, Expander<Game>?)
        case name(Postfix, String?)
        case origin(Postfix, String?)
        case pageFollowsCount(Postfix, Int?)
        case pageLogo(Postfix, Expander<Logo>?)
        case slug(Postfix, String?)
        case subCategory(Postfix, SubCategory?)
        case uplay(Postfix, String?)
        case url(Postfix, String?)
        case websites(Postfix, Expander<[Website]>?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .background:
                return "background"
            case .battlenet:
                return "battlenet"
            case .category:
                return "category"
            case .color:
                return "color"
            case .company:
                return "company"
            case .country:
                return "country"
            case .description:
                return "description"
            case .feed:
                return "feed"
            case .game:
                return "game"
            case .name:
                return "name"
            case .origin:
                return "origin"
            case .pageFollowsCount:
                return "page_follows_count"
            case .pageLogo:
                return "page_logo"
            case .slug:
                return "slug"
            case .subCategory:
                return "sub_category"
            case .uplay:
                return "uplay"
            case .url:
                return "url"
            case .websites:
                return "websites"
            }
        }
    }
}
