import Foundation

/// [Release Date](https://api-docs.igdb.com/#release-date)
///
/// A handy endpoint that extends game release dates. Used to dig deeper into release dates, platforms and versions.
///
/// Request Path: https://api-v3.igdb.com/release_dates
public final class ReleaseDate: Endpoint, Composable, Updatable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case createdAt, updatedAt // Updatable
        case category, date, game, human, platform, region
        case month = "m"
        case year = "y"
    }

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The format of the release date
    public let category: DateCategory?

    /// The release date
    public let date: Date?

    /// <#Description#>
    public let game: Expander<Game>?

    /// A human readable version of the release date
    public let human: String?

    /// The game this release date is for
    public let platform: Expander<Platform>?

    /// The region of the release
    public let region: Region?

    /// The month as an integer starting at 1 (January)
    public let month: Int?

    /// The year in full (2018)
    public let year: Int?
}
