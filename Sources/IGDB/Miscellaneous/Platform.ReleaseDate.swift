import Foundation

public extension Platform {

    /// The [Platform version release date](https://igdb.github.io/api/misc-objects/platform-version-release-date/) at a specific region.
    ///
    ///     | Name   | Type             | Mandatory | Comment                                        |
    ///     | ------ | ---------------- |:---------:| ---------------------------------------------- |
    ///     | date   | 64-bit integer   |     +     | Unix epoch                                     |
    ///     | region | unsigned integer |     +     | See the [Region](Region.swift) value reference |
    ///
    /// ### Representation
    ///
    ///     {
    ///         "date": 123456789,
    ///         "region": 8
    ///     }
    public struct ReleaseDate: Miscellaneous {

        /// The release date
        public let date: Date

        /// The region of the release
        public let region: Region
    }
}

// MARK: -

public extension Platform.ReleaseDate {

    /// A type that can be used as keys for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case date
        case region
    }

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        region = try container.decode(Region.self, forKey: .region)
        date = try container.decode(unixEpoch: Date.self, forKey: .date)
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
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(region, forKey: .region)
        try container.encode(unixEpoch: date, forKey: .date)
    }
}
