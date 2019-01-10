import Foundation

public extension Game {

    /// [Game Engine](https://api-docs.igdb.com/#game-engine)
    ///
    /// Video game engines such as unreal engine.
    ///
    /// API path: [/game_engines](https://api-v3.igdb.com/game_engines)
    public final class Engine: Endpoint, Composable, Updatable {

        /// [Game Engine Logo](https://api-docs.igdb.com/#game-engine-logo)
        ///
        /// The logos of game engines
        ///
        /// API path: [/game_engine_logos](https://api-v3.igdb.com/game_engine_logos)
        public final class Logo: Image, Identifiable, Composable {

            /// The unique resource identifier to this specific entry
            public let identifier: UInt64
        }

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, Field {
            case createdAt, updatedAt // Updatablecompanies
            case description, logo, name, platforms, slug, url
        }

        /// Date this was initially added to the IGDB database
        public let createdAt: Date?

        /// The last date this entry was updated in the IGDB database
        public let updatedAt: Date?

        /// Companies who used this game engine
        public let companies: Expander<[Company]>?

        /// Description of the game engine
        public let description: String?

        /// Logo of the game engine
        public let logo: Expander<Game.Engine.Logo>?

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
