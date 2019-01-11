import Foundation

/// [Genre](https://api-docs.igdb.com/#genre)
///
/// Genres of video game
///
/// API path: [/genres](https://api-v3.igdb.com/genres)
public struct Genre: Identifiable, AutoComposable, Updatable, Codable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The name of the genre
    public let name: String?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The website address (URL) of the item
    public let url: String?
}
