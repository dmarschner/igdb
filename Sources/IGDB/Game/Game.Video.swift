import Foundation

public extension Game {

    /// [Game Video](https://api-docs.igdb.com/#game-video)
    ///
    /// A video associated with a game
    ///
    /// API path: [/game_videos](https://api-v3.igdb.com/game_videos)
    public final class Video: Endpoint, Composable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, CodingKey, Field {
            case name, videoId
        }

        /// The name of the video
        public let name: String?

        /// The external ID of the video (usually youtube)
        public let videoId: String?
    }
}

