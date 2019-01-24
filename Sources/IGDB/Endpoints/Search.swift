import Foundation

/// [Search](https://api-docs.igdb.com/#search)
///
/// Request Path: https://api-v3.igdb.com/searches
public final class Search: Identifiable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/franchises](https://api-v3.igdb.com/franchises)
    public static let requestPath: String = "searches"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    public let alternativeName: String?

    public let character: Character?

    public let collection: Collection?

    public let company: Company?

    public let description: String?

    public let game: Game?

    public let name: String?

    // public let person: Person?

    public let platform: Platform?

    public let popularity: Double?

    // public let testDummy: TestDummy?

    public let theme: Theme?

    /// The date this item was initially published by the third party
    public let publishedAt: Date?

    // sourcery:inline:Search.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
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

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<Search.CodingKeys>?
        if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        } else {
            let singleContainer = try decoder.singleValueContainer()
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        }
        // Extended decoding - any other property than identifier is optional
        alternativeName = try container?.decodeIfPresent(String.self, forKey: .alternativeName) ?? nil
        character = try container?.decodeIfPresent(Character.self, forKey: .character) ?? nil
        collection = try container?.decodeIfPresent(Collection.self, forKey: .collection) ?? nil
        company = try container?.decodeIfPresent(Company.self, forKey: .company) ?? nil
        description = try container?.decodeIfPresent(String.self, forKey: .description) ?? nil
        game = try container?.decodeIfPresent(Game.self, forKey: .game) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        platform = try container?.decodeIfPresent(Platform.self, forKey: .platform) ?? nil
        popularity = try container?.decodeIfPresent(Double.self, forKey: .popularity) ?? nil
        theme = try container?.decodeIfPresent(Theme.self, forKey: .theme) ?? nil
        publishedAt = try container?.decodeIfPresent(Date.self, forKey: .publishedAt) ?? nil
    }

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws {
        guard !isSingleValueContainable() else {
            var container = encoder.singleValueContainer()
            return try container.encode(identifier)
        }
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(identifier, forKey: .identifier)
        try container.encodeIfPresent(alternativeName, forKey: .alternativeName)
        try container.encodeIfPresent(character, forKey: .character)
        try container.encodeIfPresent(collection, forKey: .collection)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(game, forKey: .game)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(popularity, forKey: .popularity)
        try container.encodeIfPresent(theme, forKey: .theme)
        try container.encodeIfPresent(publishedAt, forKey: .publishedAt)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            alternativeName == nil &&
            character == nil &&
            collection == nil &&
            company == nil &&
            description == nil &&
            game == nil &&
            name == nil &&
            platform == nil &&
            popularity == nil &&
            theme == nil &&
            publishedAt == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
