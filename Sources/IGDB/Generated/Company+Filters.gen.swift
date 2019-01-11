// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Company: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case startDate(Postfix, Date?)
        case changeDate(Postfix, Date?)
        case changeDateCategory(Postfix, DateCategory?)
        case startDateCategory(Postfix, DateCategory?)
        case changedCompanyId(Postfix, Identifier?)
        case country(Postfix, Int?)
        case description(Postfix, String?)
        case developed(Postfix, Expander<[Game]>?)
        case logo(Postfix, Expander<Logo>?)
        case name(Postfix, String?)
        case parent(Postfix, Identifier?)
        case published(Postfix, Expander<[Game]>?)
        case slug(Postfix, String?)
        case url(Postfix, String?)
        case websites(Postfix, Expander<[Website]>?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .startDate:
                return "start_date"
            case .changeDate:
                return "change_date"
            case .changeDateCategory:
                return "change_date_category"
            case .startDateCategory:
                return "start_date_category"
            case .changedCompanyId:
                return "changed_company_id"
            case .country:
                return "country"
            case .description:
                return "description"
            case .developed:
                return "developed"
            case .logo:
                return "logo"
            case .name:
                return "name"
            case .parent:
                return "parent"
            case .published:
                return "published"
            case .slug:
                return "slug"
            case .url:
                return "url"
            case .websites:
                return "websites"
            }
        }
    }
}
