import Foundation

public extension KeyedEncodingContainer {

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    mutating func encode(timeIntervalSince1970 date: Date, forKey key: Key) throws {
        try encode(UInt64(date.timeIntervalSince1970), forKey: key)
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
    mutating func encode<Endpoint>(_ expander: Expander<Endpoint>, forKey key: Key) throws where Endpoint: IGDB.Endpoint {
        switch expander {
        case let .identifier(identifier):
            try encode(identifier, forKey: key)
        case let .expanded(endpoint):
            try encode(endpoint, forKey: key)
        }
    }
}
