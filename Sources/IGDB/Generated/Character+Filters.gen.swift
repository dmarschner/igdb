// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Character: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case akas(Postfix, [String]?)
        case countryName(Postfix, String?)
        case description(Postfix, String?)
        case games(Postfix, Expander<[Game]>?)
        case gender(Postfix, Gender?)
        case mugShot(Postfix, Expander<MugShot>?)
        case name(Postfix, String?)
        case people(Postfix, Expander<[Character]>?)
        case slug(Postfix, String?)
        case species(Postfix, Species?)
        case url(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .akas:
                return "akas"
            case .countryName:
                return "country_name"
            case .description:
                return "description"
            case .games:
                return "games"
            case .gender:
                return "gender"
            case .mugShot:
                return "mug_shot"
            case .name:
                return "name"
            case .people:
                return "people"
            case .slug:
                return "slug"
            case .species:
                return "species"
            case .url:
                return "url"
            }
        }
    }
}
