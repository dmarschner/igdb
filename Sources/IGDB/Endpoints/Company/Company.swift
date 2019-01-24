import Foundation

/// [Company](https://api-docs.igdb.com/#company)
///
/// Video game companies. Both publishers & developers
public final class Company: Identifiable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/companies](https://api-v3.igdb.com/companies)
    public static let requestPath: String = "companies"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The resource creation timestamp
    public let createdAt: Date?

    /// The last resource update timestamp
    public let updatedAt: Date?

    /// The date a company was founded
    public let startDate: Date?

    /// The data when a company got a new ID
    public let changeDate: Date?

    /// The new ID for a company that has gone through a merger or restructuring
    public let changedCompanyId: Identifier?

    /// ISO 3166-1 country code
    public let country: Int?

    /// A free text description of a company
    public let description: String?

    /// An array of games that a company has developed
    public let developed: [Game]?

    /// The company’s logo
    public let logo: Logo?

    /// The company’s name
    public let name: String?

    /// A company with a controlling interest in a specific company
    public let parent: Identifier?

    /// An array of games that a company has published
    public let published: [Game]?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The website address (URL) of the item
    public let url: String?

    /// The companies official websites
    public let websites: [Website]?

    // TODO: Not sure if actually used
    public let changeDateCategory: DateCategory?
    public let startDateCategory: DateCategory?

    // sourcery:inline:Company.Codable
    // swiftlint:disable all

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case startDate = "start_date"
        case changeDate = "change_date"
        case changedCompanyId = "changed_company_id"
        case country
        case description
        case developed
        case logo
        case name
        case parent
        case published
        case slug
        case url
        case websites
        case changeDateCategory = "change_date_category"
        case startDateCategory = "start_date_category"
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<Company.CodingKeys>?
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
        startDate = try container?.decodeIfPresent(Date.self, forKey: .startDate) ?? nil
        changeDate = try container?.decodeIfPresent(Date.self, forKey: .changeDate) ?? nil
        changedCompanyId = try container?.decodeIfPresent(Identifier.self, forKey: .changedCompanyId) ?? nil
        country = try container?.decodeIfPresent(Int.self, forKey: .country) ?? nil
        description = try container?.decodeIfPresent(String.self, forKey: .description) ?? nil
        developed = try container?.decodeIfPresent([Game].self, forKey: .developed) ?? nil
        logo = try container?.decodeIfPresent(Logo.self, forKey: .logo) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        parent = try container?.decodeIfPresent(Identifier.self, forKey: .parent) ?? nil
        published = try container?.decodeIfPresent([Game].self, forKey: .published) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
        url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
        websites = try container?.decodeIfPresent([Website].self, forKey: .websites) ?? nil
        changeDateCategory = try container?.decodeIfPresent(DateCategory.self, forKey: .changeDateCategory) ?? nil
        startDateCategory = try container?.decodeIfPresent(DateCategory.self, forKey: .startDateCategory) ?? nil
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
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(changeDate, forKey: .changeDate)
        try container.encodeIfPresent(changedCompanyId, forKey: .changedCompanyId)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(developed, forKey: .developed)
        try container.encodeIfPresent(logo, forKey: .logo)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(parent, forKey: .parent)
        try container.encodeIfPresent(published, forKey: .published)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(websites, forKey: .websites)
        try container.encodeIfPresent(changeDateCategory, forKey: .changeDateCategory)
        try container.encodeIfPresent(startDateCategory, forKey: .startDateCategory)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            startDate == nil &&
            changeDate == nil &&
            changedCompanyId == nil &&
            country == nil &&
            description == nil &&
            developed == nil &&
            logo == nil &&
            name == nil &&
            parent == nil &&
            published == nil &&
            slug == nil &&
            url == nil &&
            websites == nil &&
            changeDateCategory == nil &&
            startDateCategory == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // swiftlint:enable all
    // sourcery:end
}
