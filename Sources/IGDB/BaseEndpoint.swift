import Foundation

public class BaseEndpoint: Codable {

    /// A type that can be used as keys for encoding and decoding
    private enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date

    ///  The last date this entry was updated in the IGDB database
    public let updatedAt: Date

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        identifier = try container.decode(UInt64.self, forKey: .identifier)
        createdAt = try container.decode(timeIntervalSince1970: Date.self, forKey: .createdAt)
        updatedAt = try container.decode(timeIntervalSince1970: Date.self, forKey: .updatedAt)
    }

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(identifier, forKey: .identifier)
        try container.encode(timeIntervalSince1970: createdAt, forKey: .createdAt)
        try container.encode(timeIntervalSince1970: updatedAt, forKey: .updatedAt)
    }
}
