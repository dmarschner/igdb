import Foundation

// TODO: Right now, game only - check later and move to Game scope if necessary

/// [Collection](https://api-docs.igdb.com/#collection)
///
/// Collection, AKA Series
///
/// API path: [/collections](https://api-v3.igdb.com/collections)
public final class Collection: Endpoint, Composable, Updatable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case createdAt, updatedAt // Updatable
        case name, slug, url
    }

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
