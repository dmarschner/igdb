import Foundation

public extension Game {

    /// [Game Video](https://api-docs.igdb.com/#game-video)
    ///
    /// A video associated with a game
    ///
    /// API path: [/game_videos](https://api-v3.igdb.com/game_videos)
    public struct Video: Codable, Identifiable, Composable {

        /// The name of the video
        public let name: String?

        /// The external ID of the video (usually youtube)
        public let videoId: String?
    }
}

extension Video {
}

extension Video  {
}

