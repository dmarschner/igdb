import Foundation

extension ReleaseDate: Codable {
    // sourcery:inline:ReleaseDate.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case date
        case game
        case human
        case platform
        case region
        case month = "m"
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
        let container: KeyedDecodingContainer<ReleaseDate.CodingKeys>?
        if let singleContainer = try? decoder.singleValueContainer() {
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        } else {
            let keyedContainer = try decoder.container(keyedBy: CodingKeys.self)
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        }
        // Extended decoding - any other property than identifier is optional
        createdAt = try container?.decodeIfPresent(Date.self, forKey: .createdAt) ?? nil
        updatedAt = try container?.decodeIfPresent(Date.self, forKey: .updatedAt) ?? nil
        category = try container?.decodeIfPresent(DateCategory.self, forKey: .category) ?? nil
        date = try container?.decodeIfPresent(Date.self, forKey: .date) ?? nil
        game = try container?.decodeIfPresent(Game.Identifier.self, forKey: .game) ?? nil
        human = try container?.decodeIfPresent(String.self, forKey: .human) ?? nil
        platform = try container?.decodeIfPresent(Platform.self, forKey: .platform) ?? nil
        region = try container?.decodeIfPresent(Region.self, forKey: .region) ?? nil
        month = try container?.decodeIfPresent(Int.self, forKey: .month) ?? nil
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
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(game, forKey: .game)
        try container.encodeIfPresent(human, forKey: .human)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(region, forKey: .region)
        try container.encodeIfPresent(month, forKey: .month)
        try container.encodeIfPresent(year, forKey: .year)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            category == nil &&
            date == nil &&
            game == nil &&
            human == nil &&
            platform == nil &&
            region == nil &&
            month == nil &&
            year == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
