import Foundation

/// [Page](https://api-docs.igdb.com/#page)
///
/// Our multipurpose page system is currently used for youtubers and media organisations.
public final class Page: Identifiable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/pages](https://api-v3.igdb.com/pages)
    public static let requestPath: String = "pages"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The page background
    public let background: Background?

    /// A battlenet ID
    public let battlenet: String?

    /// The type (category) of this page
    public let category: Category?

    /// The main color of this page
    public let color: Color?

    /// The company this page is about
    public let company: Company?

    /// ISO 3166-1 country code
    public let country: Int?

    /// A description
    public let description: String?

    /// The id of the feed for this page
    public let feed: Feed?

    /// The game this page is about
    public let game: Game?

    /// The page name
    public let name: String?

    /// An Origin ID
    public let origin: String?

    /// The number of followers this page has
    public let pageFollowsCount: Int?

    /// The page logo
    public let pageLogo: Logo?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The subcategory
    public let subCategory: SubCategory?

    /// A uplay ID
    public let uplay: String?

    /// The website address (URL) of the item
    public let url: String?

    /// The user who has write permissions to this page
//    public let user: User?

    /// <# Description #>
    public let websites: [Website]?

    // sourcery:inline:Page.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case background
        case battlenet
        case category
        case color
        case company
        case country
        case description
        case feed
        case game
        case name
        case origin
        case pageFollowsCount = "page_follows_count"
        case pageLogo = "page_logo"
        case slug
        case subCategory = "sub_category"
        case uplay
        case url
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
        let container: KeyedDecodingContainer<Page.CodingKeys>?
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
        background = try container?.decodeIfPresent(Background.self, forKey: .background) ?? nil
        battlenet = try container?.decodeIfPresent(String.self, forKey: .battlenet) ?? nil
        category = try container?.decodeIfPresent(Category.self, forKey: .category) ?? nil
        color = try container?.decodeIfPresent(Color.self, forKey: .color) ?? nil
        company = try container?.decodeIfPresent(Company.self, forKey: .company) ?? nil
        country = try container?.decodeIfPresent(Int.self, forKey: .country) ?? nil
        description = try container?.decodeIfPresent(String.self, forKey: .description) ?? nil
        feed = try container?.decodeIfPresent(Feed.self, forKey: .feed) ?? nil
        game = try container?.decodeIfPresent(Game.self, forKey: .game) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        origin = try container?.decodeIfPresent(String.self, forKey: .origin) ?? nil
        pageFollowsCount = try container?.decodeIfPresent(Int.self, forKey: .pageFollowsCount) ?? nil
        pageLogo = try container?.decodeIfPresent(Logo.self, forKey: .pageLogo) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
        subCategory = try container?.decodeIfPresent(SubCategory.self, forKey: .subCategory) ?? nil
        uplay = try container?.decodeIfPresent(String.self, forKey: .uplay) ?? nil
        url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
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
        try container.encodeIfPresent(background, forKey: .background)
        try container.encodeIfPresent(battlenet, forKey: .battlenet)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(feed, forKey: .feed)
        try container.encodeIfPresent(game, forKey: .game)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(origin, forKey: .origin)
        try container.encodeIfPresent(pageFollowsCount, forKey: .pageFollowsCount)
        try container.encodeIfPresent(pageLogo, forKey: .pageLogo)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(subCategory, forKey: .subCategory)
        try container.encodeIfPresent(uplay, forKey: .uplay)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(websites, forKey: .websites)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            background == nil &&
            battlenet == nil &&
            category == nil &&
            color == nil &&
            company == nil &&
            country == nil &&
            description == nil &&
            feed == nil &&
            game == nil &&
            name == nil &&
            origin == nil &&
            pageFollowsCount == nil &&
            pageLogo == nil &&
            slug == nil &&
            subCategory == nil &&
            uplay == nil &&
            url == nil &&
            websites == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
