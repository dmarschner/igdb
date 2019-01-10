import Foundation

public extension Game {

    /// [Game Video](https://api-docs.igdb.com/#game-video)
    ///
    /// A video associated with a game
    ///
    /// API path: [/game_videos](https://api-v3.igdb.com/game_videos)
    public struct Video: Codable, Identifiable, Composable {

        // sourcery:inline:Game.Video.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
            case identifier = "id"
            case name
            case videoId = "video_id"
        }
        // sourcery:end

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// The name of the video
        public let name: String?

        /// The external ID of the video (usually youtube)
        public let videoId: String?
    }
}
