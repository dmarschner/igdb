// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Platform: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case abbreviation(Postfix, String?)
        case alternativeName(Postfix, String?)
        case category(Postfix, Category?)
        case generation(Postfix, Int?)
        case name(Postfix, String?)
        case platformLogo(Postfix, Expander<Logo>?)
        case productFamily(Postfix, Expander<ProductFamily>?)
        case slug(Postfix, String?)
        case summary(Postfix, String?)
        case url(Postfix, String?)
        case versions(Postfix, Expander<[PlatformVersion]>?)
        case websites(Postfix, Expander<[Website]>?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .abbreviation:
                return "abbreviation"
            case .alternativeName:
                return "alternative_name"
            case .category:
                return "category"
            case .generation:
                return "generation"
            case .name:
                return "name"
            case .platformLogo:
                return "platform_logo"
            case .productFamily:
                return "product_family"
            case .slug:
                return "slug"
            case .summary:
                return "summary"
            case .url:
                return "url"
            case .versions:
                return "versions"
            case .websites:
                return "websites"
            }
        }
    }
}
