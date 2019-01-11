import Foundation

/// [Multiplayer Mode](https://api-docs.igdb.com/#multiplayer-mode)
///
/// Data about the supported multiplayer types
///
/// API path: [/multiplayer_modes](https://api-v3.igdb.com/multiplayer_modes)
public struct MultiplayerMode: Identifiable, AutoComposable, Codable {

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
    public let platform: Platform.Identifier?

    /// True if the game supports split screen, offline multiplayer
    public let splitscreen: Bool?

    /// True if the game supports split screen, online multiplayer
    public let splitscreenonline: Bool?
}
