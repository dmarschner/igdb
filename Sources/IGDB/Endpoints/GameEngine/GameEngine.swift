import Foundation

/// [Game Engine](https://api-docs.igdb.com/#game-engine)
///
/// Video game engines such as unreal engine.
public final class GameEngine: Identifiable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/game_engines](https://api-v3.igdb.com/game_engines)
    public static let requestPath: String = "game_engines"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// Companies who used this game engine
    public let companies: [Company]?

    /// Description of the game engine
    public let description: String?

    /// Logo of the game engine
    public let logo: Logo?

    /// Name of the game engine
    public let name: String?

    /// Platforms this game engine was deployed on
    public let platforms: [Platform]?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The website address (URL) of the item
    public let url: String?

    // sourcery:inline:GameEngine.Codable
    // swiftlint:disable all

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case companies
        case description
        case logo
        case name
        case platforms
        case slug
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
        let container: KeyedDecodingContainer<GameEngine.CodingKeys>?
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
        companies = try container?.decodeIfPresent([Company].self, forKey: .companies) ?? nil
        description = try container?.decodeIfPresent(String.self, forKey: .description) ?? nil
        logo = try container?.decodeIfPresent(Logo.self, forKey: .logo) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        platforms = try container?.decodeIfPresent([Platform].self, forKey: .platforms) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
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
        try container.encodeIfPresent(companies, forKey: .companies)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(platforms, forKey: .platforms)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(url, forKey: .url)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            companies == nil &&
            description == nil &&
            logo == nil &&
            name == nil &&
            platforms == nil &&
            slug == nil &&
            url == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // swiftlint:enable all
    // sourcery:end
}
