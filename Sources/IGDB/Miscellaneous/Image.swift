import Foundation

/// [Image](https://igdb.github.io/api/misc-objects/image/) identifier
///
///     | Name          | Type             | Mandatory | Comment                      |
///     | ------------- | ---------------- |:---------:| ---------------------------- |
///     | url           | string           |     +     | Can be non-IGDB URL          |
///     | cloudinary_id | string           |     -     | Cloudinary slug              |
///     | width         | unsigned integer |     -     | The image's width in pixels  |
///     | height        | unsigned integer |     -     | The image's height in pixels |
///
/// - Important:
///
///     Images are somewhat weirdly arranged. See https://igdb.github.io/api/references/images/
///     To get different sized images, check out the [ImageFormatter](ImageFormatter.swift).
///
/// ### Representation
///
///     {
///         "url": "//images.igdb.com/igdb/image/upload/t_thumb/l3n0zuklmgkloi1udslt.png",
///         "cloudinary_id": "l3n0zuklmgkloi1udslt",
///         "width": 339,
///         "height": 393
///     }
public struct Image: Miscellaneous {

    /// Can be non-IGDB URL
    public let url: String

    /// Cloudinary slug
    public let cloudinaryId: String?

    /// The image's width in pixels
    public let width: UInt?

    /// The image's height in pixels
    public let height: UInt?
}

// MARK: -

public extension Image {

    /// A type that can be used as keys for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case url, width, height
        case cloudinaryId = "cloudinary_id"
    }
}
