import Foundation

/// [Involved Company](https://api-docs.igdb.com/#involved-company)
public final class InvolvedCompany: Identifiable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/involved_companies](https://api-v3.igdb.com/involved_companies)
    public static let requestPath: String = "involved_companies"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    public let company: Company?

    public let developer: Bool?

    public let game: Game?

    public let porting: Bool?

    public let publisher: Bool?

    public let supporting: Bool?

    // sourcery:inline:InvolvedCompany.Codable
    // swiftlint:disable all

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case company
        case developer
        case game
        case porting
        case publisher
        case supporting
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<InvolvedCompany.CodingKeys>?
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
        company = try container?.decodeIfPresent(Company.self, forKey: .company) ?? nil
        developer = try container?.decodeIfPresent(Bool.self, forKey: .developer) ?? nil
        game = try container?.decodeIfPresent(Game.self, forKey: .game) ?? nil
        porting = try container?.decodeIfPresent(Bool.self, forKey: .porting) ?? nil
        publisher = try container?.decodeIfPresent(Bool.self, forKey: .publisher) ?? nil
        supporting = try container?.decodeIfPresent(Bool.self, forKey: .supporting) ?? nil
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
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(developer, forKey: .developer)
        try container.encodeIfPresent(game, forKey: .game)
        try container.encodeIfPresent(porting, forKey: .porting)
        try container.encodeIfPresent(publisher, forKey: .publisher)
        try container.encodeIfPresent(supporting, forKey: .supporting)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            company == nil &&
            developer == nil &&
            game == nil &&
            porting == nil &&
            publisher == nil &&
            supporting == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // swiftlint:enable all
    // sourcery:end
}
