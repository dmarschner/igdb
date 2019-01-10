import Foundation

/// [Platform](https://api-docs.igdb.com/platform)
///
/// The hardware used to run the game or game delivery network
///
/// API path: [/platforms](https://api-v3.igdb.com/platforms)
public final class Platform: Endpoint, Composable, Updatable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case createdAt, updatedAt // Updatable
        case abbreviation, alternativeName, category, generation, name
        case platformLogo, productFamily, slug, summary, url, versions, websites
    }

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// An abbreviation of the platform name
    public let abbreviation: String?

    /// An alternative name for the platform
    public let alternativeName: String?

    /// A physical or virtual category of the platform
    public let category: Category?

    /// The generation of the platform
    public let generation: Int?

    /// The name of the platform
    public let name: String?

    /// The logo of the first Version of this platform
    public let platformLogo: Expander<Logo>?

    /// The family of platforms this one belongs to
    public let productFamily: Expander<ProductFamily>?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The summary of the first Version of this platform
    public let summary: String?

    /// The website address (URL) of the item
    public let url: String?

    /// Associated versions of this platform
    public let versions: Expander<[Version]>?

    /// <# Description #>
    public let websites: Expander<[Platform.Website]>?
}
