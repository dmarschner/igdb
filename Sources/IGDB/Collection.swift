import Foundation

// TODO: Right now, game only - check later and move to Game scope if necessary

/// [Collection](https://api-docs.igdb.com/#collection)
///
/// Collection, AKA Series
///
/// API path: [/collections](https://api-v3.igdb.com/collections)
public struct Collection: Codable, Identifiable, Composable, Updatable {

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

extension Collection {
}

extension Collection  {
}
