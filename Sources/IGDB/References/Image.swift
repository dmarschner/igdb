import Foundation

/// Images within the IGDB universe (resolution and aspect ratio may vary)
///
/// - Note:
///
///     To get different sized images, check out the [Images+Sizes](Images+Sizes.swift) extension.
///
public class Image: Codable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case isTransparent = "alpha_channel"
        case animated, height, url, width
        case imageSlug = "image_id"
    }

    /// Wether or not the image has an alpha channel
    public let isTransparent: Bool?

    /// Whether or not the image is animated
    public let animated: Bool?

    /// The website address (URL) of the item
    public let url: String?

    /// The height of the image in pixels
    public let height: Int?

    /// The width of the image in pixels
    public let width: Int?

    /// The slug of the image used to construct an IGDB image link
    public let imageSlug: String?
}
