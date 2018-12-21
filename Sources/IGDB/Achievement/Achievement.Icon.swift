import Foundation

public extension Achievement {

    /// [Achievement Icon](https://api-docs.igdb.com/?swift#achievement-icon)
    ///
    /// An icon for a specific achievement
    ///
    /// Request Path: https://api-v3.igdb.com/achievement_icons
    public final class Icon: BaseEndpoint, Endpoint {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum CodingKeys: String, CodingKey, Fields {
            case isTransparent = "alpha_channel"
            case animated, height, url, width
            case imageId = "image_id"
        }

        /// Wether or not the image has an alpha channel
        public let isTransparent: Bool?

        /// Whether or not the image is animated
        public let animated: Bool?

        /// The height of the image in pixels
        public let height: Int?

        /// The website address (URL) of the item
        public let url: String?

        /// The width of the image in pixels
        public let width: Int?

        /// The ID of the image used to construct an IGDB image link
        public let imageId: String?

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public required init(from decoder: Decoder) throws {
            try super.init(from: decoder)
            let container = try decoder.container(keyedBy: CodingKeys.self)
            animated = try container.decodeIfPresent(Bool.self, forKey: .animated)
            height = try container.decodeIfPresent(Int.self, forKey: .height)
            url = try container.decodeIfPresent(String.self, forKey: .url)
            width = try container.decodeIfPresent(Int.self, forKey: .width)
            imageId = try container.decodeIfPresent(String.self, forKey: .imageId)
        }
    }
}
