import Foundation

extension MultiplayerMode: Codable {
    // sourcery:inline:MultiplayerMode.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case campaigncoop
        case dropin
        case lancoop
        case offlinecoop
        case offlinecoopmax
        case offlinemax
        case onlinecoop
        case onlinecoopmax
        case onlinemax
        case platform
        case splitscreen
        case splitscreenonline
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<MultiplayerMode.CodingKeys>?
        if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        } else {
            let singleContainer = try decoder.singleValueContainer()
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        }
        // Extended decoding - any other property than identifier is optional
        campaigncoop = try container?.decodeIfPresent(Bool.self, forKey: .campaigncoop) ?? nil
        dropin = try container?.decodeIfPresent(Bool.self, forKey: .dropin) ?? nil
        lancoop = try container?.decodeIfPresent(Bool.self, forKey: .lancoop) ?? nil
        offlinecoop = try container?.decodeIfPresent(Bool.self, forKey: .offlinecoop) ?? nil
        offlinecoopmax = try container?.decodeIfPresent(Int.self, forKey: .offlinecoopmax) ?? nil
        offlinemax = try container?.decodeIfPresent(Int.self, forKey: .offlinemax) ?? nil
        onlinecoop = try container?.decodeIfPresent(Bool.self, forKey: .onlinecoop) ?? nil
        onlinecoopmax = try container?.decodeIfPresent(Int.self, forKey: .onlinecoopmax) ?? nil
        onlinemax = try container?.decodeIfPresent(Int.self, forKey: .onlinemax) ?? nil
        platform = try container?.decodeIfPresent(Platform.Identifier.self, forKey: .platform) ?? nil
        splitscreen = try container?.decodeIfPresent(Bool.self, forKey: .splitscreen) ?? nil
        splitscreenonline = try container?.decodeIfPresent(Bool.self, forKey: .splitscreenonline) ?? nil
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
        try container.encodeIfPresent(campaigncoop, forKey: .campaigncoop)
        try container.encodeIfPresent(dropin, forKey: .dropin)
        try container.encodeIfPresent(lancoop, forKey: .lancoop)
        try container.encodeIfPresent(offlinecoop, forKey: .offlinecoop)
        try container.encodeIfPresent(offlinecoopmax, forKey: .offlinecoopmax)
        try container.encodeIfPresent(offlinemax, forKey: .offlinemax)
        try container.encodeIfPresent(onlinecoop, forKey: .onlinecoop)
        try container.encodeIfPresent(onlinecoopmax, forKey: .onlinecoopmax)
        try container.encodeIfPresent(onlinemax, forKey: .onlinemax)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(splitscreen, forKey: .splitscreen)
        try container.encodeIfPresent(splitscreenonline, forKey: .splitscreenonline)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            campaigncoop == nil &&
            dropin == nil &&
            lancoop == nil &&
            offlinecoop == nil &&
            offlinecoopmax == nil &&
            offlinemax == nil &&
            onlinecoop == nil &&
            onlinecoopmax == nil &&
            onlinemax == nil &&
            platform == nil &&
            splitscreen == nil &&
            splitscreenonline == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
