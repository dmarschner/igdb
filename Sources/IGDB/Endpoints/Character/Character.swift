import Foundation
import Apicalypse

/// Video Game [Characters](https://api-docs.igdb.com/#character)
public final class Character: Identifiable, Updatable, Searchable, Codable {

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

    // sourcery:inline:Character.Codable
    // swiftlint:disable all

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
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

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<Character.CodingKeys>?
        if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        } else {
            let singleContainer = try decoder.singleValueContainer()
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        }
        // Extended decoding - any other property than identifier is optional
        createdAt = try container?.decodeIfPresent(Date.self, forKey: .createdAt) ?? nil
        updatedAt = try container?.decodeIfPresent(Date.self, forKey: .updatedAt) ?? nil
        akas = try container?.decodeIfPresent([String].self, forKey: .akas) ?? nil
        countryName = try container?.decodeIfPresent(String.self, forKey: .countryName) ?? nil
        description = try container?.decodeIfPresent(String.self, forKey: .description) ?? nil
        games = try container?.decodeIfPresent([Game].self, forKey: .games) ?? nil
        gender = try container?.decodeIfPresent(Gender.self, forKey: .gender) ?? nil
        mugShot = try container?.decodeIfPresent(MugShot.self, forKey: .mugShot) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        people = try container?.decodeIfPresent([Character].self, forKey: .people) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
        species = try container?.decodeIfPresent(Species.self, forKey: .species) ?? nil
        url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
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
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(akas, forKey: .akas)
        try container.encodeIfPresent(countryName, forKey: .countryName)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(games, forKey: .games)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(mugShot, forKey: .mugShot)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(people, forKey: .people)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(species, forKey: .species)
        try container.encodeIfPresent(url, forKey: .url)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            akas == nil &&
            countryName == nil &&
            description == nil &&
            games == nil &&
            gender == nil &&
            mugShot == nil &&
            name == nil &&
            people == nil &&
            slug == nil &&
            species == nil &&
            url == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // swiftlint:enable all
    // sourcery:end
}
