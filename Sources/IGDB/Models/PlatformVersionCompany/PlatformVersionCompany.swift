import Foundation

/// [Platform Version Company](https://api-docs.igdb.com/#platform-version-company)
///
/// A platform developer
public final class PlatformVersionCompany: Identifiable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/platform_version_companies](https://api-v3.igdb.com/platform_version_companies)
    public static let requestPath: String = "platform_version_companies"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Any notable comments about the developer
    public let comment: String?

    /// The company responsible for developing this platform version
    public let company: Company?

    /// <# Description #>
    public let developer: Bool?

    /// <# Description #>
    public let manufacturer: Bool?

    // sourcery:inline:PlatformVersionCompany.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case comment
        case company
        case developer
        case manufacturer
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<PlatformVersionCompany.CodingKeys>?
        if let keyedContainer = try? decoder.container(keyedBy: CodingKeys.self) {
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        } else {
            let singleContainer = try decoder.singleValueContainer()
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        }
        // Extended decoding - any other property than identifier is optional
        comment = try container?.decodeIfPresent(String.self, forKey: .comment) ?? nil
        company = try container?.decodeIfPresent(Company.self, forKey: .company) ?? nil
        developer = try container?.decodeIfPresent(Bool.self, forKey: .developer) ?? nil
        manufacturer = try container?.decodeIfPresent(Bool.self, forKey: .manufacturer) ?? nil
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
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(developer, forKey: .developer)
        try container.encodeIfPresent(manufacturer, forKey: .manufacturer)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            comment == nil &&
            company == nil &&
            developer == nil &&
            manufacturer == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
