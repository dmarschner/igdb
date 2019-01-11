import Foundation

extension Platform {

    public enum Category: Int, Codable {
        case console = 1
        case arcade
        case platform
        case operatingSystem
        case portableConsole
        case computer
    }

    /// [Platform Logo](https://api-docs.igdb.com/#platform-logo)
    ///
    /// Logo for a platform
    ///
    /// Request Path: https://api-v3.igdb.com/platform_logos
    public typealias Logo = Image

    /// [Platform Website](https://api-docs.igdb.com/#platform-website)
    ///
    /// The main website for the platform
    ///
    /// Request Path: https://api-v3.igdb.com/platform_websites
    public typealias Website = IGDB.Website
}
