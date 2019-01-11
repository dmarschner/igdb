// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension PlatformVersionReleaseDate: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case category(Postfix, DateCategory?)
        case date(Postfix, Date?)
        case human(Postfix, String?)
        case platformVersion(Postfix, PlatformVersion.Identifier?)
        case region(Postfix, Region?)
        case month(Postfix, Int?)
        case year(Postfix, Int?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .category:
                return "category"
            case .date:
                return "date"
            case .human:
                return "human"
            case .platformVersion:
                return "platform_version"
            case .region:
                return "region"
            case .month:
                return "m"
            case .year:
                return "y"
            }
        }
    }
}
