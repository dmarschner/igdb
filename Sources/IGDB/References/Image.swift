import Foundation

/// Images within the IGDB universe (resolution and aspect ratio may vary)
///
/// - Note:
///
///     To get different sized images, check out the [Images+Sizes](Images+Sizes.swift) extension.
///
public protocol Image {

    /// The unique resource identifier to this specific entry
    var identifier: UInt64 { get }

    // sourcery: key = alpha_channel
    /// Wether or not the image has an alpha channel
    var isTransparent: Bool? { get }

    /// Whether or not the image is animated
    var animated: Bool? { get }

    /// The website address (URL) of the item
    var url: String? { get }

    /// The height of the image in pixels
    var height: Int? { get }

    /// The width of the image in pixels
    var width: Int? { get }

    /// The slug of the image used to construct an IGDB image link
    var imageId: String? { get }
}
