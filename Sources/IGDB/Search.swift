import Foundation

/// [Search](https://api-docs.igdb.com/#search)
///
/// Request Path: https://api-v3.igdb.com/searches
public struct Search: Codable, Identifiable, Composable {

    // sourcery:inline:Search.CodingKeys

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case alternativeName = "alternative_name"
        case character
        case collection
        case company
        case description
        case game
        case name
        case platform
        case popularity
        case theme
        case publishedAt = "published_at"
    }
    // sourcery:end

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    public let alternativeName: String?

    public let character: Expander<Character>?

    public let collection: Expander<Collection>?

    public let company: Expander<Company>?

    public let description: String?

    public let game: Expander<Game>?

    public let name: String?

    // public let person: Expander<Person>?

    public let platform: Expander<Platform>?

    public let popularity: Double?

    // public let testDummy: Expander<TestDummy>?

    public let theme: Expander<Game.Theme>?

    /// The date this item was initially published by the third party
    public let publishedAt: Date?
}
