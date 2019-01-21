import Foundation

/// [External Game](https://api-docs.igdb.com/#external-game) reference
///
/// Game IDs on other services
///
/// - Note: This endpoint is not available within the Free Tier (requires Pro)
public final class ExternalGame: Identifiable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/external_games](https://api-v3.igdb.com/external_games)
    public static let requestPath: String = "external_games"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The id of the other service
    public let category: Category?

    /// The IGDB ID of the game
    public let game: Game.Identifier?

    /// The name of the game according to the other service
    public let name: String?

    /// The other services ID for this game
    public let uid: String?

    /// The website address (URL) of the item
    public let url: String?

    /// The year in full (2018)
    // sourcery: key = y
    public let year: Int?

    // sourcery:inline:ExternalGame.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case game
        case name
        case uid
        case url
        case year = "y"
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<ExternalGame.CodingKeys>?
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
        category = try container?.decodeIfPresent(Category.self, forKey: .category) ?? nil
        game = try container?.decodeIfPresent(Game.Identifier.self, forKey: .game) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        uid = try container?.decodeIfPresent(String.self, forKey: .uid) ?? nil
        url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
        year = try container?.decodeIfPresent(Int.self, forKey: .year) ?? nil
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
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(game, forKey: .game)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(uid, forKey: .uid)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(year, forKey: .year)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            category == nil &&
            game == nil &&
            name == nil &&
            uid == nil &&
            url == nil &&
            year == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
