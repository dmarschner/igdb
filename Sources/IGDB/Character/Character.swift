import Foundation

/// Video Game [Characters](https://api-docs.igdb.com/#character)
///
/// API path: [/characters](https://api-v3.igdb.com/characters)
public final class Character: Endpoint, Composable, Updatable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case akas, description, games, gender, name, people
        case slug, species, url, countryName, mugShot
        case createdAt, updatedAt // Updatable
    }

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

    /// <# Description #>
    public let games: Expander<[Game]>?

    /// <# Description #>
    public let gender: Gender?

    /// An image depciting a character
    public let mugShot: Expander<MugShot>?

    /// <# Description #>
    public let name: String?

    /// <# Description #>
    public let people: Expander<[Character]>?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// <# Description #>
    public let species: Species?

    /// The website address (URL) of the item
    public let url: String?
}
