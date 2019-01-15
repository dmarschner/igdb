import Foundation

/// [Franchise](https://api-docs.igdb.com/#franchise)
///
/// A list of video game franchises such as Star Wars.
///
/// API path: [/franchises](https://api-v3.igdb.com/franchises)
public struct Franchise: Identifiable, Entity, AutoComposable, AutoFilterable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/franchises](https://api-v3.igdb.com/franchises)
    public static let requestPath: String = "franchises"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The name of the franchise
    public let name: String?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The website address (URL) of the item
    public let url: String?
}
