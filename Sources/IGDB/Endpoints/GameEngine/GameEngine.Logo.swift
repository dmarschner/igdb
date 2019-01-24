import Foundation

extension GameEngine {

    /// [Game Engine Logo](https://api-docs.igdb.com/#game-engine-logo)
    ///
    /// The logos of game engines
    public final class Logo: Identifiable, Image, Codable {

        /// The API endpoint to request these entities from
        public static var requestPath: String = "game_engine_logos"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        // sourcery: key = alpha_channel
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
        public let imageId: String?

        // sourcery:inline:GameEngine.Logo.Codable
    // swiftlint:disable all

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey {
            case identifier = "id"
            case isTransparent = "alpha_channel"
            case animated
            case url
            case height
            case width
            case imageId = "image_id"
        }

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public init(from decoder: Decoder) throws {
            // Find proper container, and decode the identifier right away. This is the only mandatory property.
            let container: KeyedDecodingContainer<GameEngine.Logo.CodingKeys>?
            if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
                identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
                container = keyedContainer
            } else {
                let singleContainer = try decoder.singleValueContainer()
                identifier = try singleContainer.decode(Identifier.self)
                container = nil
            }
            // Extended decoding - any other property than identifier is optional
            isTransparent = try container?.decodeIfPresent(Bool.self, forKey: .isTransparent) ?? nil
            animated = try container?.decodeIfPresent(Bool.self, forKey: .animated) ?? nil
            url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
            height = try container?.decodeIfPresent(Int.self, forKey: .height) ?? nil
            width = try container?.decodeIfPresent(Int.self, forKey: .width) ?? nil
            imageId = try container?.decodeIfPresent(String.self, forKey: .imageId) ?? nil
        }

        /// Encodes this value into the given encoder.
        ///
        /// If the value fails to encode anything, `encoder` will encode an empty
        /// keyed container in its place.
        ///
        /// This function throws an error if any values are invalid for the given
        /// encoder's format.
        ///
        /// - Parameter encoder: The encoder to write data to.
        public func encode(to encoder: Encoder) throws {
            guard !isSingleValueContainable() else {
                var container = encoder.singleValueContainer()
                return try container.encode(identifier)
            }
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(identifier, forKey: .identifier)
            try container.encodeIfPresent(isTransparent, forKey: .isTransparent)
            try container.encodeIfPresent(animated, forKey: .animated)
            try container.encodeIfPresent(url, forKey: .url)
            try container.encodeIfPresent(height, forKey: .height)
            try container.encodeIfPresent(width, forKey: .width)
            try container.encodeIfPresent(imageId, forKey: .imageId)
        }

        /// Returns true if all properties but the identifier are `nil`.
        public func isSingleValueContainable() -> Bool {
            return  // true, if all properties are nil
                isTransparent == nil &&
                animated == nil &&
                url == nil &&
                height == nil &&
                width == nil &&
                imageId == nil &&
                true // Have not found a way to trim the last && with sourcery
        }
    // swiftlint:enable all
        // sourcery:end
    }
}
