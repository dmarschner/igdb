import Foundation

/// [Collection](https://api-docs.igdb.com/#collection)
///
/// Collection, AKA Series
///
/// API path: [/collections](https://api-v3.igdb.com/collections)
public struct Collection: Identifiable, AutoComposable, AutoFilterable, Updatable, Searchable, Codable {

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
