import Foundation

/// Entities or [endpoints](https://api-docs.igdb.com/#endpoints that are unique, i.e. have a unique identifier, within the IGDB API.
///
/// Base API path: [https://api-v3.igdb.com](https://api-v3.igdb.com)
///
/// In order to communicate with the server, you will have to send these headers.
///
///     | HTTP Header | Value            |
///     | ----------- | ---------------- |
///     | user-key    | <your-key>       |
///     | accept      | application/json |
///
/// All the responses contain the following field in the result:
///
///     | Name       | Type                                                   | Mandatory | Comment    |
///     | ---------- | ------------------------------------------------------ | --------- | ---------- |
///     | id         | <Identifier> (most probably `unsigned 64-bit integer`) | +         |            |
///
/// ### Representation
///
///     {
///         ...
///         "id": 1234,
///         ...
///     }
public protocol Identifiable {

    /// The identifier value type
    associatedtype Identifier: Codable

    /// The unique resource identifier to this specific entry
    var identifier: Identifier { get }
}

/// Allows multiple entities to be used as identifiable proxy elements
extension Array: Identifiable where Element: Identifiable {

    /// The identifier value type
    public typealias Identifier = [Element.Identifier]

    /// The unique resource identifier to this specific entry
    public var identifier: [Element.Identifier] {
        return map({ $0.identifier })
    }
}

// MARK: - Coding

/// A type that can be used as keys for encoding and decoding. Hidden within the file.
private enum CodingKeys: String, CodingKey {
    case identifier = "id"
}

public extension Identifiable where Self: Codable {

    /// Decodes `identifier` from the given decoder.
    ///
    /// - Parameter decoder: The decoder to read data from.
    /// - Returns: The identifier value of the static endpoint.
    /// - Throws: If reading from the decoder fails, or if the data read is corrupted or otherwise invalid.
    public static func decodeIdentifier(from decoder: Decoder) throws -> Identifier {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        return try container.decode(Identifier.self, forKey: .identifier)
    }

    /// Encodes `identifier` into the given encoder.
    ///
    /// If it fails to encode anything, `encoder` will encode an empty keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encodeIdentifier(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(identifier, forKey: .identifier)
    }
}
