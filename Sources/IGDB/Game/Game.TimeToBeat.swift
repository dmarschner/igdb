import Foundation

public extension Game {

    /// [Time To Beat](https://api-docs.igdb.com/#time-to-beat)
    ///
    /// Average completion times for games
    ///
    /// API path: [/time_to_beats](https://api-v3.igdb.com/time_to_beats)
    public final class TimeToBeat: Endpoint, Composable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, CodingKey, Field {
            case completely, hastly, normally, game
        }

        /// The time this game was completed in while the players were completing all tasks the game had to offer
        public let completely: Int?

        /// The time this game was completed in while the players were rushing through
        public let hastly: Int?

        /// The time this game was completed in while the players were playing through while relaxed
        public let normally: Int?

        /// The game this time-to-beat is connected to
        public let game: Expander<Game>?
    }
}
