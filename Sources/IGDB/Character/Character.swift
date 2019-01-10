import Foundation

/// Video Game [Characters](https://api-docs.igdb.com/#character)
///
/// API path: [/characters](https://api-v3.igdb.com/characters)
public struct Character: Identifiable, Composable, Updatable, Codable {

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

extension Character {

    // sourcery:inline:Character.CodingKeys
    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case akas
        case countryName = "country_name"
        case description
        case games
        case gender
        case mugShot = "mug_shot"
        case name
        case people
        case slug
        case species
        case url
    }
    // sourcery:end
}
