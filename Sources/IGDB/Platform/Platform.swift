import Foundation

/// [Platform](https://api-docs.igdb.com/platform)
///
/// The hardware used to run the game or game delivery network
///
/// API path: [/platforms](https://api-v3.igdb.com/platforms)
public struct Platform: Codable, Identifiable, Composable, Updatable {

    // sourcery:inline:Platform.CodingKeys

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case abbreviation
        case alternativeName = "alternative_name"
        case category
        case generation
        case name
        case platformLogo = "platform_logo"
        case productFamily = "product_family"
        case slug
        case summary
        case url
        case versions
        case websites
    }
    // sourcery:end

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

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
