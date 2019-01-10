import Foundation

/// The expander feature is used to combine multiple requests.
///
/// For example, a game provides a list of company IDs which in turn need to be requested to reach the company data.
/// Using the expander parameter, the company ID will instead be an object containing that data.
///
/// The expander can be used on any entity that has sub-properties such as Games, Companies, People etc.
public enum Expander<Expandable> where Expandable: Identifiable  {
    case identifier(Expandable.Identifier)
    case expanded(Expandable)

    /// The unique resource identifier to this specific entry
    public var identifier: Expandable.Identifier {
        switch self {
        case let .identifier(identifier): return identifier
        case let .expanded(expandable): return expandable.identifier
        }
    }
}

// MARK: - Codable

extension Expander: Codable where Expandable: Codable {

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        guard let expandable = try? Expandable(from: decoder) else { // Try expanded, allow failure
            self = try .identifier(.init(from: decoder)); return     // Try id only no failure allowed
        }
        self = .expanded(expandable)
    }

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws {
        switch self {
        case let .identifier(identifier):
            try identifier.encode(to: encoder)
        case let .expanded(expandable):
            try expandable.encode(to: encoder)
        }
    }
}
