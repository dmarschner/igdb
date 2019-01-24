import Foundation

/// [Alternative and international](https://api-docs.igdb.com/#alternative-name) game titles
///
///     {
///         "id": 32376,
///         "name": "Thief: o Projeto Negro",
///         "comment": "Brazilian title"
///     }
public final class AlternativeName: Identifiable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/alternative_names](https://api-v3.igdb.com/alternative_names)
    public static let requestPath: String = "alternative_names"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// A description of what kind of alternative name it is (Acronym, Working title, Japanese title etc)
    public let comment: String?

    /// An alternative name
    public let name: String?

    // sourcery:inline:AlternativeName.Codable
    // swiftlint:disable all

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case comment
        case name
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<AlternativeName.CodingKeys>?
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
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
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
        try container.encodeIfPresent(name, forKey: .name)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            comment == nil &&
            name == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // swiftlint:enable all
    // sourcery:end
}
