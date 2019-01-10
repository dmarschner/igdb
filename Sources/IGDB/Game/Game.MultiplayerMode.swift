import Foundation

extension Game {

    /// [Multiplayer Mode](https://api-docs.igdb.com/#multiplayer-mode)
    ///
    /// Data about the supported multiplayer types
    ///
    /// API path: [/multiplayer_modes](https://api-v3.igdb.com/multiplayer_modes)
    public struct MultiplayerMode: Identifiable, Composable, Codable {

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
        public let platform: Expander<Platform>?

        /// True if the game supports split screen, offline multiplayer
        public let splitscreen: Bool?

        /// True if the game supports split screen, online multiplayer
        public let splitscreenonline: Bool?
    }
}

extension Game.MultiplayerMode {

    // sourcery:inline:Game.MultiplayerMode.CodingKeys
    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
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
    // sourcery:end
}
