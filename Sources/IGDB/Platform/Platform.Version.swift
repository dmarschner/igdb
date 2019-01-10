import Foundation

public extension Platform {

    /// [Platform Version](https://api-docs.igdb.com/#platform-version)
    ///
    /// API path: [/platform_versions](https://api-v3.igdb.com/platform_versions)
    public struct Version: Codable, Identifiable, Composable {

        // sourcery:inline:Platform.Version.CodingKeys

        /// A type that can be used as a key for encoding and decoding.
        public enum CodingKeys: String, CodingKey, Field {
            case identifier = "id"
            case companies
            case connectivity
            case cpu
            case graphics
            case mainManufacturer = "main_manufacturer"
            case media
            case memory
            case name
            case os
            case output
            case platformLogo = "platform_logo"
            case platformVersionReleaseDates = "platform_version_release_dates"
            case resolutions
            case slug
            case sound
            case storage
            case summary
            case url
        }
        // sourcery:end

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Who developed this platform version
        public let companies: Expander<Platform.Company>?

        /// The network capabilities
        public let connectivity: String?

        /// The integrated control processing unit
        public let cpu: String?

        /// The graphics chipset
        public let graphics: String?

        /// Who manufactured this version of the platform
        public let mainManufacturer: Expander<Platform.Company>?

        /// The type of media this version accepted
        public let media: String?

        /// How much memory there is
        public let memory: String?

        /// The name of the platform version
        public let name: String?

        /// The operating system installed on the platform version
        public let os: String?

        /// The output video rate
        public let output: String?

        /// The logo of this platform version
        public let platformLogo: Expander<Platform.Logo>?

        /// When this platform was released
        public let platformVersionReleaseDates: Expander<[Platform.ReleaseDate]>?

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
}
