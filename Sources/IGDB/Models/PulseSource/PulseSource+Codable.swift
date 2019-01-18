import Foundation

extension PulseSource: Codable {
    // sourcery:inline:PulseSource.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case game
        case name
        case page
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<PulseSource.CodingKeys>?
        if let singleContainer = try? decoder.singleValueContainer() {
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        } else {
            let keyedContainer = try decoder.container(keyedBy: CodingKeys.self)
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        }
        // Extended decoding - any other property than identifier is optional
        game = try container?.decodeIfPresent(Game.self, forKey: .game) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        page = try container?.decodeIfPresent(Page.self, forKey: .page) ?? nil
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
        try container.encodeIfPresent(game, forKey: .game)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(page, forKey: .page)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            game == nil &&
            name == nil &&
            page == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}