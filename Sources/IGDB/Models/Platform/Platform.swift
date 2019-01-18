import Foundation

/// [Platform](https://api-docs.igdb.com/platform)
///
/// The hardware used to run the game or game delivery network
public struct Platform: Identifiable, Updatable, Searchable {

    /// The API endpoint to request these entities from.
    /// Path: [/platforms](https://api-v3.igdb.com/platforms)
    public static let requestPath: String = "platforms"

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
    public let platformLogo: Logo?

    /// The family of platforms this one belongs to
    public let productFamily: ProductFamily?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The summary of the first Version of this platform
    public let summary: String?

    /// The website address (URL) of the item
    public let url: String?

    /// Associated versions of this platform
    public let versions: [PlatformVersion]?

    /// Associated websites of this platform
    public let websites: [Website]?
}
