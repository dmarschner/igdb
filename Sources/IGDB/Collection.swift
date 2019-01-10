import Foundation

// TODO: Right now, game only - check later and move to Game scope if necessary

/// [Collection](https://api-docs.igdb.com/#collection)
///
/// Collection, AKA Series
///
/// API path: [/collections](https://api-v3.igdb.com/collections)
public struct Collection: Codable, Identifiable, Composable, Updatable {

    // sourcery:inline:Collection.CodingKeys

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

    /// Umbrella term for a collection of games
    public let name: String?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The website address (URL) of the item
    public let url: String?
}
