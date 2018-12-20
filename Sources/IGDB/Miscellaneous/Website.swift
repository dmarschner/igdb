import Foundation

/// [Website](https://igdb.github.io/api/misc-objects/website/) reference
///
///     | Name       | Type                    | Mandatory | Comment                                                            |
///     | ---------- | ----------------------- |:---------:| ------------------------------------------------------------------ |
///     | category   | unsigned 64-bit integer |     +     | See the [Website category](Website.Category.swift) value reference |
///     | url        | string                  |     +     | Url to website                                                     |
///
/// ### Representation
///
///     {
///         "category": 1,
///         "url": "https://www.igdb.com"
///     }
public struct Website: Miscellaneous {

    /// The website category (Twitch, Reddit, ...)
    public let category: Category

    /// URL to website
    public let url: String
}
