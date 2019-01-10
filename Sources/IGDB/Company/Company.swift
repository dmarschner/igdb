import Foundation

/// [Company](https://api-docs.igdb.com/#company)
///
/// Video game companies. Both publishers & developers
///
/// API path: [/companies](https://api-v3.igdb.com/companies)
public final class Company: Endpoint, Composable, Updatable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case country, description, developed, logo, name, parent, published, slug, url, websites
        case changeDate, changeDateCategory, changedCompanyId, startDate, startDateCategory
        case createdAt, updatedAt // Updatable
    }

    /// The resource creation timestamp
    public let createdAt: Date?

    /// The last resource update timestamp
    public let updatedAt: Date?

    /// The date a company was founded
    public let startDate: Date?

    /// The data when a company got a new ID
    public let changeDate: Date?

    /// <# Description #> // TODO: Not sure if actually used
    public let changeDateCategory: DateCategory?

    /// <# Description #> // TODO: Not sure if actually used
    public let startDateCategory: DateCategory?

    /// The new ID for a company that has gone through a merger or restructuring
    public let changedCompanyId: Identifier?

    /// ISO 3166-1 country code
    public let country: Int?

    /// A free text description of a company
    public let description: String?

    /// An array of games that a company has developed
    public let developed: Expander<[Game]>?

    /// The company’s logo
    public let logo: Expander<Logo>?

    /// The company’s name
    public let name: String?

    /// A company with a controlling interest in a specific company
    public let parent: Identifier?

    /// An array of games that a company has published
    public let published: Expander<[Game]>?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The website address (URL) of the item
    public let url: String?

    /// The companies official websites
    public let websites: Expander<[Website]>?
}
