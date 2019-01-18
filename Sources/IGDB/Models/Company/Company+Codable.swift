import Foundation

extension Company: Codable {
    // sourcery:inline:Company.Codable

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
        if let singleContainer = try? decoder.singleValueContainer() {
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        } else {
            let keyedContainer = try decoder.container(keyedBy: CodingKeys.self)
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
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
    // sourcery:end
}
