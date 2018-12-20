import Foundation

public extension PEGI {

    /// PEGI rating of the game, video, ...
    ///
    /// [/enum-fields/pegi-rating](https://igdb.github.io/api/enum-fields/pegi-rating/)
    ///
    ///     | Value | Minimum age in years |
    ///     | ----- | -------------------- |
    ///     | 1     | 3                    |
    ///     | 2     | 7                    |
    ///     | 3     | 12                   |
    ///     | 4     | 16                   |
    ///     | 5     | 18                   |
    public enum Rating: Int, Enumeration {
        case three = 1
        case seven
        case twelve
        case sixteen
        case eighteen
    }
}
