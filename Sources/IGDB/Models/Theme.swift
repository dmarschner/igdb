import Foundation

/// [Theme](https://api-docs.igdb.com/#theme)
///
/// Video game themes
public struct Theme: Identifiable, Entity, AutoComposable, AutoFilterable, Updatable, Searchable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/themes](https://api-v3.igdb.com/themes)
    public static let requestPath: String = "themes"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The name of the game mode
    public let name: String?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The website address (URL) of the item
    public let url: String?
}
