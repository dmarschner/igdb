import Foundation

extension AgeRating {

    /// [Age Rating Content Description](https://api-docs.igdb.com/?swift#age-rating-content-description)
    public final class ContentDescription: Identifiable, Codable {

        /// The API endpoint to request these entities from.
        /// Path: [/age_rating_content_descriptions](https://api-v3.igdb.com/age_rating_content_descriptions)
        public static let requestPath: String = "age_rating_content_descriptions"

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// The organization that has issued a specific rating
        public let category: Category?

        /// Descriptive reason as to why the rating has been assigned. e.g. "Strong Language", "Animated Blood", ...
        public let description: String?

        // sourcery:inline:AgeRating.ContentDescription.Codable
    // swiftlint:disable all

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey {
            case identifier = "id"
            case category
            case description
        }

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public init(from decoder: Decoder) throws {
            // Find proper container, and decode the identifier right away. This is the only mandatory property.
            let container: KeyedDecodingContainer<AgeRating.ContentDescription.CodingKeys>?
            if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
                identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
                container = keyedContainer
            } else {
                let singleContainer = try decoder.singleValueContainer()
                identifier = try singleContainer.decode(Identifier.self)
                container = nil
            }
            // Extended decoding - any other property than identifier is optional
            category = try container?.decodeIfPresent(Category.self, forKey: .category) ?? nil
            description = try container?.decodeIfPresent(String.self, forKey: .description) ?? nil
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
            try container.encodeIfPresent(category, forKey: .category)
            try container.encodeIfPresent(description, forKey: .description)
        }

        /// Returns true if all properties but the identifier are `nil`.
        public func isSingleValueContainable() -> Bool {
            return  // true, if all properties are nil
                category == nil &&
                description == nil &&
                true // Have not found a way to trim the last && with sourcery
        }
    // swiftlint:enable all
        // sourcery:end
    }
}
