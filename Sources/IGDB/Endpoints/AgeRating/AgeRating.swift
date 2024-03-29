import Foundation

/// [Age Rating](https://api-docs.igdb.com/?swift#age-rating) according to various rating organisations
public final class AgeRating: Identifiable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/age_ratings](https://api-v3.igdb.com/age_ratings)
    public static let requestPath: String = "age_ratings"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The organization that has issued a specific rating
    public let category: Category?

    /// The title of an age rating
    public let rating: Rating?

    /// Reference ID for Age Rating Content Description
    public let contentDescriptions: [ContentDescription]?

    /// The url for the image of a age rating
    public let ratingCoverUrl: String?

    /// A free text motivating a rating
    public let synopsis: String?

    // sourcery:inline:AgeRating.Codable
    // swiftlint:disable all

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case category
        case rating
        case contentDescriptions = "content_descriptions"
        case ratingCoverUrl = "rating_cover_url"
        case synopsis
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<AgeRating.CodingKeys>?
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
        rating = try container?.decodeIfPresent(Rating.self, forKey: .rating) ?? nil
        contentDescriptions = try container?.decodeIfPresent([ContentDescription].self, forKey: .contentDescriptions) ?? nil
        ratingCoverUrl = try container?.decodeIfPresent(String.self, forKey: .ratingCoverUrl) ?? nil
        synopsis = try container?.decodeIfPresent(String.self, forKey: .synopsis) ?? nil
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
        try container.encodeIfPresent(rating, forKey: .rating)
        try container.encodeIfPresent(contentDescriptions, forKey: .contentDescriptions)
        try container.encodeIfPresent(ratingCoverUrl, forKey: .ratingCoverUrl)
        try container.encodeIfPresent(synopsis, forKey: .synopsis)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            category == nil &&
            rating == nil &&
            contentDescriptions == nil &&
            ratingCoverUrl == nil &&
            synopsis == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // swiftlint:enable all
    // sourcery:end
}
