import Foundation

/// [Game Video](https://api-docs.igdb.com/#game-video)
///
/// A video associated with a game
///
/// API path: [/game_videos](https://api-v3.igdb.com/game_videos)
public struct Video: Identifiable, AutoComposable, Codable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The name of the video
    public let name: String?

    /// The external ID of the video (usually youtube)
    public let videoId: String?
}
