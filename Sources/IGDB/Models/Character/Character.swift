import Foundation

/// Video Game [Characters](https://api-docs.igdb.com/#character)
public struct Character: Identifiable, Updatable, Searchable {

    /// The API endpoint to request these entities from.
    /// Path: [/characters](https://api-v3.igdb.com/characters)
    public static let requestPath: String = "characters"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// Alternative names for a character
    public let akas: [String]?

    /// A characters country of origin
    public let countryName: String?

    /// A text describing a character
    public let description: String?

    /// The games within which this character may be seen
    public let games: [Game]?

    /// The gender of the
    public let gender: Gender?

    /// An image depciting a character
    public let mugShot: MugShot?

    /// The name of the characer
    public let name: String?

    /// <# Description #>
    public let people: [Character]?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// <# Description #>
    public let species: Species?

    /// The website address (URL) of the item
    public let url: String?
}
