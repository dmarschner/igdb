// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension PlatformVersion: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case companies(Postfix, Expander<PlatformVersionCompany>?)
        case connectivity(Postfix, String?)
        case cpu(Postfix, String?)
        case graphics(Postfix, String?)
        case mainManufacturer(Postfix, Expander<PlatformVersionCompany>?)
        case media(Postfix, String?)
        case memory(Postfix, String?)
        case name(Postfix, String?)
        case operationSystem(Postfix, String?)
        case output(Postfix, String?)
        case platformLogo(Postfix, Expander<Platform.Logo>?)
        case releaseDates(Postfix, Expander<[PlatformVersionReleaseDate]>?)
        case resolutions(Postfix, String?)
        case slug(Postfix, String?)
        case sound(Postfix, String?)
        case storage(Postfix, String?)
        case summary(Postfix, String?)
        case url(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .companies:
                return "companies"
            case .connectivity:
                return "connectivity"
            case .cpu:
                return "cpu"
            case .graphics:
                return "graphics"
            case .mainManufacturer:
                return "main_manufacturer"
            case .media:
                return "media"
            case .memory:
                return "memory"
            case .name:
                return "name"
            case .operationSystem:
                return "os"
            case .output:
                return "output"
            case .platformLogo:
                return "platform_logo"
            case .releaseDates:
                return "platform_version_release_dates"
            case .resolutions:
                return "resolutions"
            case .slug:
                return "slug"
            case .sound:
                return "sound"
            case .storage:
                return "storage"
            case .summary:
                return "summary"
            case .url:
                return "url"
            }
        }
    }
}
