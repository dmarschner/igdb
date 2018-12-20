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
    public func decode(unixEpoch type: Date.Type, forKey key: KeyedDecodingContainer<K>.Key) throws -> Date {

        // Date is actually a an unsigned 64-bit integer unix timestamp in milliseconds.
        // Conversion requires:
        //      1) Decoding as `UInt64`, conversion to `TimeInterval`
        //      2) Milliseconds to seconds conversion (`/ 1000.0`)
        //      3) Date initializer from unix epoch (1970)
        let timeIntervalNoneFloating = try decode(UInt64.self, forKey: key)
        let timeIntervalInMilliSeconds = TimeInterval(timeIntervalNoneFloating)
        let timeIntervalInSeconds = timeIntervalInMilliSeconds / 1000.0
        return Date(timeIntervalSince1970: timeIntervalInSeconds)
    }
}
