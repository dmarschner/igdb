import Foundation

/// [ESRB](https://igdb.github.io/api/misc-objects/esrb/) rating of the game, video, ...
///
///     | Name     | Type             | Mandatory | Comment                                                  |
///     | -------- | ---------------- |:---------:| -------------------------------------------------------- |
///     | rating   | unsigned integer |     +     | See the [ESRB rating](ESRB.Rating.swift) value reference |
///     | synopsis | string           |     -     |                                                          |
///
/// ### Representation
///
///     {
///         "rating": "4"
///     }
public struct ESRB: Miscellaneous {

    /// The rating value
    public let rating: Rating

    /// A descriptive summary of the rating
    public let synopsis: String?
}
