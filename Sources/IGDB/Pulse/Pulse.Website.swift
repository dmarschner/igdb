import Foundation

public extension Pulse {

    /// [Pulse Website](https://api-docs.igdb.com/#pulse-url)
    ///
    /// A URL linking to the article
    ///
    /// Request Path: https://api-v3.igdb.com/pulse_urls
    public final class Website: IGDB.Website, Identifiable, Composable {

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public required init(from decoder: Decoder) throws {
            identifier = try type(of: self).decodeIdentifier(from: decoder)
            try super.init(from: decoder)
        }

        /// Encodes this value into the given encoder.
        ///
        /// If the value fails to encode anything, `encoder` will encode an empty keyed container in its place.
        ///
        /// This function throws an error if any values are invalid for the given encoder's format.
        ///
        /// - Parameter encoder: The encoder to write data to.
        public override func encode(to encoder: Encoder) throws {
            try encodeIdentifier(to: encoder)
            try super.encode(to: encoder)
        }
    }
}
