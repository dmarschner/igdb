import Foundation

/// A named Youtube [Video](https://igdb.github.io/api/misc-objects/video/)
///
///     | Name       | Type   | Mandatory | Comment      |
///     | ---------- | ------ |:---------:| ------------ |
///     | name       | string |     +     |              |
///     | video_id   | string |     +     | Youtube slug |
///
/// ### Representation
///
///     {
///         "name": "Trailer",
///         "video_id": "9C543B6uJ88"
///     }
public struct Video: Miscellaneous {

    /// The video name
    public let name: String

    /// The Youtube slug
    public let videoId: String
}

// MARK: -

public extension Video {

    /// A type that can be used as keys for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case videoId = "video_id"
        case name
    }
}
