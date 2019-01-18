import Foundation

/// [Platform Version Company](https://api-docs.igdb.com/#platform-version-company)
///
/// A platform developer
public struct PlatformVersionCompany: Identifiable {

    /// The API endpoint to request these entities from.
    /// Path: [/platform_version_companies](https://api-v3.igdb.com/platform_version_companies)
    public static let requestPath: String = "platform_version_companies"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Any notable comments about the developer
    public let comment: String?

    /// The company responsible for developing this platform version
    public let company: Company?

    /// <# Description #>
    public let developer: Bool?

    /// <# Description #>
    public let manufacturer: Bool?
}
