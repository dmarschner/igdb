import Foundation

extension Page {

    public enum Category: Int, Codable {
        case personality = 1
        case mediaOrganization
        case contentCreator
        case clanTeam
    }

    public enum Color: Int, Codable {
        case green
        case blue
        case red
        case orange
        case pink
        case yellow
    }

    public enum SubCategory: Int, Codable {
        case user = 1
        case game
        case company
        case consumer
        case industry
        case eSports
    }

    /// [Page Background](https://api-docs.igdb.com/#page-background)
    ///
    /// Background of a page
    ///
    /// Request Path: https://api-v3.igdb.com/page_backgrounds
    public typealias Background = Image

    /// [Page Logo](https://api-docs.igdb.com/#page-logo)
    ///
    /// Logo for a page
    ///
    /// Request Path: https://api-v3.igdb.com/page_logos
    public typealias Logo = Image

    /// [Page Website](https://api-docs.igdb.com/#page-website)
    ///
    /// Page Website
    ///
    /// Request Path: https://api-v3.igdb.com/page_websites
    public typealias Website = IGDB.Website
}
