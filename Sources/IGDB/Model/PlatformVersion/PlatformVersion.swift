import Foundation

/// [Platform Version](https://api-docs.igdb.com/#platform-version)
///
/// API path: [/platform_versions](https://api-v3.igdb.com/platform_versions)
public struct PlatformVersion: Identifiable, AutoComposable, Codable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Who developed this platform version
    public let companies: Expander<Company>?

    /// The network capabilities
    public let connectivity: String?

    /// The integrated control processing unit
    public let cpu: String?

    /// The graphics chipset
    public let graphics: String?

    /// Who manufactured this version of the platform
    public let mainManufacturer: Expander<Company>?

    /// The type of media this version accepted
    public let media: String?

    /// How much memory there is
    public let memory: String?

    /// The name of the platform version
    public let name: String?

    /// The operating system installed on the platform version
    // sourcery: key = os
    public let operationSystem: String?

    /// The output video rate
    public let output: String?

    /// The logo of this platform version
    public let platformLogo: Expander<Platform.Logo>?

    /// When this platform was released
    // sourcery: key = platform_version_release_dates
    public let releaseDates: Expander<[ReleaseDate]>?

    /// The maximum resolution
    public let resolutions: String?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// The sound chipset
    public let sound: String?

    /// How much storage there is
    public let storage: String?

    /// A short summary
    public let summary: String?

    /// The website address (URL) of the item
    public let url: String?
}
