import Foundation

/// [PEGI](https://igdb.github.io/api/misc-objects/pegi/) rating of the game, video, ...
///
///     | Name     | Type             | Mandatory | Comment                                                  |
///     | -------- | ---------------- |:---------:| -------------------------------------------------------- |
///     | rating   | unsigned integer |     +     | See the [PEGI rating](PEGI.Rating.swift) value reference |
///     | synopsis | string           |     -     |                                                          |
///
/// ### Representation
///
///     {
///         "rating": "4",
///         "synopsis":
///             "The content of this game is suitable for persons aged 16 years and over only.\nIt contains: Realistic looking violence."
///     }
public struct PEGI: Miscellaneous {

    /// The rating value
    public let rating: Rating

    /// A descriptive summary of the rating
    public let synopsis: String?
}
