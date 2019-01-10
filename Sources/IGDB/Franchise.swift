import Foundation

// TODO: Right now, game only - check later and move to Game scope if necessary

/// [Franchise](https://api-docs.igdb.com/#franchise)
///
/// A list of video game franchises such as Star Wars.
///
/// API path: [/franchises](https://api-v3.igdb.com/franchises)
public final class Franchise: Endpoint, Composable, Updatable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case createdAt, updatedAt // Updatable
        case name, slug, url
    }

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
