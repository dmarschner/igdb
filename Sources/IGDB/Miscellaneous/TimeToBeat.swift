import Foundation

/// The average [Time to beat](https://igdb.github.io/api/misc-objects/time-to-beat/) a game hastly, normally or completely.
///
///     | Name       | Type                    | Mandatory | Comment           |
///     | ---------- | ----------------------- |:---------:| ----------------- |
///     | hastly     | unsigned 64-bit integer |     -     | Number of seconds |
///     | normally   | unsigned 64-bit integer |     -     | Number of seconds |
///     | completely | unsigned 64-bit integer |     -     | Number of seconds |
///
/// ### Representation
///
///     {
///         "hastly": 30200,
///         "normally": 44550,
///         "completely": 111150
///     }
public struct TimeToBeat: Miscellaneous {

    /// The average number of seconds to complete the game hastly.
    public let hastly: UInt64?

    /// The average number of seconds to complete the game normally.
    public let normally: UInt64?

    /// The average number of seconds to complete the game completely.
    public let completely: UInt64?
}
