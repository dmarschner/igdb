import Foundation

/// [Game Video](https://api-docs.igdb.com/#game-video)
///
/// A video associated with a game
public struct Video: Identifiable {

    /// The API endpoint to request these entities from.
    /// Path: [/game_videos](https://api-v3.igdb.com/game_videos)
    public static let requestPath: String = "game_videos"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The name of the video
    public let name: String?

    /// The external ID of the video (usually youtube)
    public let videoId: String?
}
