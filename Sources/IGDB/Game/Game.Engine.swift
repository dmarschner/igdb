import Foundation

public extension Game {

    /// [Game Engine](https://api-docs.igdb.com/#game-engine)
    ///
    /// Video game engines such as unreal engine.
    ///
    /// API path: [/game_engines](https://api-v3.igdb.com/game_engines)
    public struct Engine: Codable, Identifiable, Composable, Updatable {

        // sourcery:inline:Game.Engine.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
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
        // sourcery:end

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// Companies who used this game engine
        public let companies: Expander<[Company]>?

        /// Description of the game engine
        public let description: String?

        /// Logo of the game engine
        public let logo: Expander<Logo>?

        /// Name of the game engine
        public let name: String?

        /// Platforms this game engine was deployed on
        public let platforms: Expander<[Platform]>?

        /// A url-safe, unique, lower-case version of the name
        public let slug: String?

        /// The website address (URL) of the item
        public let url: String?
    }
}

public extension Game.Engine {

    /// [Game Engine Logo](https://api-docs.igdb.com/#game-engine-logo)
    ///
    /// The logos of game engines
    ///
    /// API path: [/game_engine_logos](https://api-v3.igdb.com/game_engine_logos)
    public final class Logo: Image, Identifiable, Composable {

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        // sourcery:inline:Game.Engine.Logo.IdentifierKey

        /// A type that can be used as a key for identifier encoding
        private enum IdentifierKey: String, CodingKey {
            case identifier = "id"
        }
        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: IdentifierKey.self)
            identifier = try container.decode(Identifier.self, forKey: .identifier)
            try super.init(from: decoder)
        }
        /// Encodes this value into the given encoder.
        ///
        /// If the value fails to encode anything, `encoder` will encode an empty keyed container in its place.
        ///
        /// This function throws an error if any values are invalid for the given encoder's format.
        ///
        /// - Parameter encoder: The encoder to write data to.
        public override func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: IdentifierKey.self)
            try container.encode(identifier, forKey: .identifier)
            try super.encode(to: encoder)
        }
        // sourcery:end
    }
}
