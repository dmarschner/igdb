import Foundation

/// [Time To Beat](https://api-docs.igdb.com/#time-to-beat)
///
/// Average completion times for games
public struct TimeToBeat: Identifiable, Entity, AutoComposable, AutoFilterable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/time_to_beats](https://api-v3.igdb.com/time_to_beats)
    public static let requestPath: String = "time_to_beats"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The time this game was completed in while the players were completing all tasks the game had to offer
    public let completely: Int?

    /// The time this game was completed in while the players were rushing through
    public let hastly: Int?

    /// The time this game was completed in while the players were playing through while relaxed
    public let normally: Int?

    /// The game this time-to-beat is connected to
    public let game: Game.Identifier?
}
