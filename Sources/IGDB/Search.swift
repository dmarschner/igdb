import Foundation

/// [Search](https://api-docs.igdb.com/#search)
///
/// Request Path: https://api-v3.igdb.com/searches
public final class Search: Endpoint, Composable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case alternativeName, character, collection, company, description
        case game, name, person, platform, popularity, theme, publishedAt
    }

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
