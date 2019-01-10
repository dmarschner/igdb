import Foundation

// TODO: Right now, game only - check later and move to Game scope if necessary

/// [Franchise](https://api-docs.igdb.com/#franchise)
///
/// A list of video game franchises such as Star Wars.
///
/// API path: [/franchises](https://api-v3.igdb.com/franchises)
public struct Franchise: Codable, Identifiable, Composable, Updatable {

    // sourcery:inline:Franchise.CodingKeys

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case name
        case slug
        case url
    }
    // sourcery:end

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
