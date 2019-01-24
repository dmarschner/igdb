import Foundation

/// [Multiplayer Mode](https://api-docs.igdb.com/#multiplayer-mode)
///
/// Data about the supported multiplayer types
public final class MultiplayerMode: Identifiable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/multiplayer_modes](https://api-v3.igdb.com/multiplayer_modes)
    public static let requestPath: String = "multiplayer_modes"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// True if the game supports campaign coop
    public let campaigncoop: Bool?

    /// True if the game supports drop in/out multiplayer
    public let dropin: Bool?

    /// True if the game supports LAN coop
    public let lancoop: Bool?

    /// True if the game supports offline coop
    public let offlinecoop: Bool?

    /// Maximum number of offline players in offline coop
    public let offlinecoopmax: Int?

    /// Maximum number of players in offline multiplayer
    public let offlinemax: Int?

    /// True if the game supports online coop
    public let onlinecoop: Bool?

    /// Maximum number of online players in online coop
    public let onlinecoopmax: Int?

    /// Maximum number of players in online multiplayer
    public let onlinemax: Int?

    /// The platform this multiplayer mode refers to
    public let platform: Platform?

    /// True if the game supports split screen, offline multiplayer
    public let splitscreen: Bool?

    /// True if the game supports split screen, online multiplayer
    public let splitscreenonline: Bool?

    // sourcery:inline:MultiplayerMode.Codable
    // swiftlint:disable all

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
        platform = try container?.decodeIfPresent(Platform.self, forKey: .platform) ?? nil
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
    // swiftlint:enable all
    // sourcery:end
}
