import Foundation

/// [Keyword](https://api-docs.igdb.com/#keyword)
///
/// Keywords are words or phrases that get tagged to a game such as “world war 2” or “steampunk”.
///
/// API path: [/keywords](https://api-v3.igdb.com/keywords)
public struct Keyword: Identifiable, Entity, AutoComposable, AutoFilterable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/keywords](https://api-v3.igdb.com/keywords)
    public static let requestPath: String = "keywords"

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
