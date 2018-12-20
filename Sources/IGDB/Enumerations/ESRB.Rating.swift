import Foundation

public extension ESRB {

    /// ESRB rating of the game, video, ...
    ///
    /// [/enum-fields/esrb-rating](https://igdb.github.io/api/enum-fields/esrb-rating/)
    ///
    ///     | Value | Rating |
    ///     | ----- | ------ |
    ///     | 1     | RP     |
    ///     | 2     | EC     |
    ///     | 3     | E      |
    ///     | 4     | E10+   |
    ///     | 5     | T      |
    ///     | 6     | M      |
    ///     | 7     | AO     |
    public enum Rating: Int, Enumeration {
        case ratingPending = 1
        case earlyChildhood
        case everyone
        case everyone10Plus
        case teen
        case mature
        case adultsOnly
    }
}
