import Foundation

public extension KeyedDecodingContainer {

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    public func decode(unix type: Date.Type, forKey key: Key) throws -> Date {
        return try Date(timeIntervalSince1970: TimeInterval(decode(UInt64.self, forKey: key)))
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    public func decode<E>(_ type: Expander<E>.Type, forKey key: Key) throws -> Expander<E> where E: IGDB.Endpoint {
        guard let object = try? decode(E.self, forKey: key) else {          // Check if expandend, allow failure
            return try .identifier(decode(E.Identifier.self, forKey: key))  // Check if identifier, do not allow failure
        }
        return .expanded(object)
    }
}
