import Foundation

/// [Release Date](https://api-docs.igdb.com/#release-date)
///
/// A handy endpoint that extends game release dates. Used to dig deeper into release dates, platforms and versions.
///
/// Request Path: https://api-v3.igdb.com/release_dates
public struct ReleaseDate: Codable, Identifiable, Composable, Updatable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The format of the release date
    public let category: DateCategory?

    /// The release date
    public let date: Date?

    /// <#Description#>
    public let game: Game.Identifier?

    /// A human readable version of the release date
    public let human: String?

    /// The game this release date is for
    public let platform: Expander<Platform>?

    /// The region of the release
    public let region: Region?

    /// The month as an integer starting at 1 (January)
    // sourcery: key = m
    public let month: Int?

    /// The year in full (2018)
    // sourcery: key = y
    public let year: Int?
}

extension ReleaseDate {

    // sourcery:inline:ReleaseDate.CodingKeys
    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case date
        case game
        case human
        case platform
        case region
        case month = "m"
        case year = "y"
    }
    // sourcery:end
}
