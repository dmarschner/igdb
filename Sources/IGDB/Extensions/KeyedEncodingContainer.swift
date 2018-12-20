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
    mutating func encode(unixEpoch date: Date, forKey key: KeyedEncodingContainer<K>.Key) throws {

        // Date is actually a an unsigned 64-bit integer unix timestamp in milliseconds.
        // See `init(from decoder:)` on `KeyedDecodingContainer` extension for details.
        let timeInterval = date.timeIntervalSince1970 * 1000.0 // Seconds to milli-seconds
        try encode(UInt64(timeInterval), forKey: key)
    }
}
