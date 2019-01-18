import Foundation

extension Game {

    /// [Official artworks](https://api-docs.igdb.com/?swift#artwork) (resolution and aspect ratio may vary)
    public struct Artwork: Image {

        /// Images must use predifined coding keys
        public typealias CodingKeys = ImageCodingKeys

        /// The API endpoint to request these entities from
        public static var requestPath: String = "artworks"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

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
        public let imageHash: String?
    }
}