import Foundation

extension Page {

    /// [Page Logo](https://api-docs.igdb.com/#page-logo)
    ///
    /// Logo for a page
    ///
    /// Request Path: https://api-v3.igdb.com/page_logos
    public final class Logo: Image, Identifiable, Composable {

        // sourcery:inline:Page.Logo.IdentifierKey
        /// A type that can be used as a key for identifier encoding
        private enum IdentifierKey: String, CodingKey { // swiftlint:disable:this nesting
            case identifier = "id"
        }

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Creates a new instance by decoding from the given decoder.
        ///
        /// This initializer throws an error if reading from the decoder fails, or
        /// if the data read is corrupted or otherwise invalid.
        ///
        /// - Parameter decoder: The decoder to read data from.
        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: IdentifierKey.self)
            identifier = try container.decode(Identifier.self, forKey: .identifier)
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
            var container = encoder.container(keyedBy: IdentifierKey.self)
            try container.encode(identifier, forKey: .identifier)
            try super.encode(to: encoder)
        }
        // sourcery:end
    }
}
