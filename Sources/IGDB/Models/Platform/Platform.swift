import Foundation
import Apicalypse

/// [Platform](https://api-docs.igdb.com/platform)
///
/// The hardware used to run the game or game delivery network
public final class Platform: Identifiable, Updatable, Searchable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/platforms](https://api-v3.igdb.com/platforms)
    public static let requestPath: String = "platforms"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// An abbreviation of the platform name
    public let abbreviation: String?

    /// An alternative name for the platform
    public let alternativeName: String?

    /// A physical or virtual category of the platform
    public let category: Category?

    /// The generation of the platform
    public let generation: Int?

    /// The name of the platform
    public let name: String?

    /// The logo of the first Version of this platform
    public let platformLogo: Logo?

    /// The family of platforms this one belongs to
    public let productFamily: ProductFamily?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The summary of the first Version of this platform
    public let summary: String?

    /// The website address (URL) of the item
    public let url: String?

    /// Associated versions of this platform
    public let versions: [PlatformVersion]?

    /// Associated websites of this platform
    public let websites: [Website]?

    // sourcery:inline:Platform.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case abbreviation
        case alternativeName = "alternative_name"
        case category
        case generation
        case name
        case platformLogo = "platform_logo"
        case productFamily = "product_family"
        case slug
        case summary
        case url
        case versions
        case websites
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<Platform.CodingKeys>?
        if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        } else {
            let singleContainer = try decoder.singleValueContainer()
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        }
        // Extended decoding - any other property than identifier is optional
        createdAt = try container?.decodeIfPresent(Date.self, forKey: .createdAt) ?? nil
        updatedAt = try container?.decodeIfPresent(Date.self, forKey: .updatedAt) ?? nil
        abbreviation = try container?.decodeIfPresent(String.self, forKey: .abbreviation) ?? nil
        alternativeName = try container?.decodeIfPresent(String.self, forKey: .alternativeName) ?? nil
        category = try container?.decodeIfPresent(Category.self, forKey: .category) ?? nil
        generation = try container?.decodeIfPresent(Int.self, forKey: .generation) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        platformLogo = try container?.decodeIfPresent(Logo.self, forKey: .platformLogo) ?? nil
        productFamily = try container?.decodeIfPresent(ProductFamily.self, forKey: .productFamily) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
        summary = try container?.decodeIfPresent(String.self, forKey: .summary) ?? nil
        url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
        versions = try container?.decodeIfPresent([PlatformVersion].self, forKey: .versions) ?? nil
        websites = try container?.decodeIfPresent([Website].self, forKey: .websites) ?? nil
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
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(abbreviation, forKey: .abbreviation)
        try container.encodeIfPresent(alternativeName, forKey: .alternativeName)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(generation, forKey: .generation)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(platformLogo, forKey: .platformLogo)
        try container.encodeIfPresent(productFamily, forKey: .productFamily)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(versions, forKey: .versions)
        try container.encodeIfPresent(websites, forKey: .websites)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            abbreviation == nil &&
            alternativeName == nil &&
            category == nil &&
            generation == nil &&
            name == nil &&
            platformLogo == nil &&
            productFamily == nil &&
            slug == nil &&
            summary == nil &&
            url == nil &&
            versions == nil &&
            websites == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
