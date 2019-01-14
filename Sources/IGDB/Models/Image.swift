import Foundation

/// Images within the IGDB universe (resolution and aspect ratio may vary)
///
/// - Note:
///
///     To get different sized images, check out the [Images+Sizes](Images+Sizes.swift) extension.
///
public struct Image: Identifiable, AutoComposable, AutoFilterable, Codable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Wether or not the image has an alpha channel
    // sourcery: key = alpha_channel
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
    // sourcery: key = image_id
    public let imageHash: String?
}
