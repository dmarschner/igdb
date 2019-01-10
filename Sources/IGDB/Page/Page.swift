import Foundation

/// [Page](https://api-docs.igdb.com/#page)
///
/// Our multipurpose page system is currently used for youtubers and media organisations.
///
/// API path: [/pages](https://api-v3.igdb.com/pages)
public final class Page: Endpoint, Composable, Updatable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case createdAt, updatedAt // Updatable
        case background, battlenet, category, color, company, country, description, feed, game
        case name, origin, pageFollowsCount, pageLogo, slug, subCategory, uplay, url, websites
    }

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The page background
    public let background: Expander<Background>?

    /// A battlenet ID
    public let battlenet: String?

    /// The type (category) of this page
    public let category: Category?

    /// The main color of this page
    public let color: Color?

    /// The company this page is about
    public let company: Expander<Company>?

    /// ISO 3166-1 country code
    public let country: Int?

    /// A description
    public let description: String?

    /// The id of the feed for this page
    public let feed: Expander<Feed>?

    /// The game this page is about
    public let game: Expander<Game>?

    /// The page name
    public let name: String?

    /// An Origin ID
    public let origin: String?

    /// The number of followers this page has
    public let pageFollowsCount: Int?

    /// The page logo
    public let pageLogo: Expander<Logo>?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The subcategory
    public let subCategory: SubCategory?

    /// A uplay ID
    public let uplay: String?

    /// The website address (URL) of the item
    public let url: String?

    /// The user who has write permissions to this page
//    public let user: Expander<User>?

    /// <# Description #>
    public let websites: Expander<[Website]>?
}
