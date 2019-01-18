import Foundation

/// A type that can be used as a key for encoding and decoding.
public enum ImageCodingKeys: String, CodingKey {
    case identifier = "id"
    case isTransparent = "alpha_channel"
    case animated
    case url
    case height
    case width
    case imageHash = "image_id"
}

/// Images within the IGDB universe (resolution and aspect ratio may vary)
///
/// - Note:
///
///     To get different sized images, check out the [Images+Sizes](Images+Sizes.swift) extension.
///
public protocol Image: Identifiable, Composable, Codable {

    /// Uses predefined type for coding
    associatedtype CodingKeys = ImageCodingKeys

    /// The unique resource identifier to this specific entry
    var identifier: UInt64 { get }

    /// Wether or not the image has an alpha channel
    // sourcery: key = alpha_channel
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
    // sourcery: key = image_id
    var imageHash: String? { get }
}

extension Image {

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Self>) throws -> [CodingKey] {
        switch keyPath {
        case \Self.identifier: return [ImageCodingKeys.identifier]
        case \Self.isTransparent: return [ImageCodingKeys.isTransparent]
        case \Self.animated: return [ImageCodingKeys.animated]
        case \Self.url: return [ImageCodingKeys.url]
        case \Self.height: return [ImageCodingKeys.height]
        case \Self.width: return [ImageCodingKeys.width]
        case \Self.imageHash: return [ImageCodingKeys.imageHash]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
}
