import Foundation

/// [Platform Version ReleaseDate](https://api-docs.igdb.com/#platform-version-release-date)
///
/// A handy endpoint that extends game release dates. Used to dig deeper into release dates, platforms and versions.
public final class PlatformVersionReleaseDate: Identifiable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/platform_version_release_dates](https://api-v3.igdb.com/platform_version_release_dates)
    public static let requestPath: String = "platform_version_release_dates"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The format of the release date
    public let category: DateCategory?

    /// The release date
    public let date: Date?

    /// A human readable version of the release date
    public let human: String?

    /// The game this release date is for
    public let platformVersion: PlatformVersion.Identifier?

    /// The region of the release
    public let region: Region?

    /// The month as an integer starting at 1 (January)
    // sourcery: key = m
    public let month: Int?

    /// The year in full (2018)
    // sourcery: key = y
    public let year: Int?

    // sourcery:inline:PlatformVersionReleaseDate.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case date
        case human
        case platformVersion = "platform_version"
        case region
        case month = "m"
        case year = "y"
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<PlatformVersionReleaseDate.CodingKeys>?
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
        category = try container?.decodeIfPresent(DateCategory.self, forKey: .category) ?? nil
        date = try container?.decodeIfPresent(Date.self, forKey: .date) ?? nil
        human = try container?.decodeIfPresent(String.self, forKey: .human) ?? nil
        platformVersion = try container?.decodeIfPresent(PlatformVersion.Identifier.self, forKey: .platformVersion) ?? nil
        region = try container?.decodeIfPresent(Region.self, forKey: .region) ?? nil
        month = try container?.decodeIfPresent(Int.self, forKey: .month) ?? nil
        year = try container?.decodeIfPresent(Int.self, forKey: .year) ?? nil
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
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(human, forKey: .human)
        try container.encodeIfPresent(platformVersion, forKey: .platformVersion)
        try container.encodeIfPresent(region, forKey: .region)
        try container.encodeIfPresent(month, forKey: .month)
        try container.encodeIfPresent(year, forKey: .year)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            category == nil &&
            date == nil &&
            human == nil &&
            platformVersion == nil &&
            region == nil &&
            month == nil &&
            year == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
