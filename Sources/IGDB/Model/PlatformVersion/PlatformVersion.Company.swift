import Foundation

extension PlatformVersion {

    /// [Platform Version Company](https://api-docs.igdb.com/#platform-version-company)
    ///
    /// A platform developer
    ///
    /// Request Path: https://api-v3.igdb.com/platform_version_companies
    public struct Company: Identifiable, AutoComposable, Codable {

        /// The unique resource identifier to this specific entry
        public let identifier: UInt64

        /// Any notable comments about the developer
        public let comment: String?

        /// The company responsible for developing this platform version
        public let company: Expander<IGDB.Company>?

        /// <# Description #>
        public let developer: Bool?

        /// <# Description #>
        public let manufacturer: Bool?
    }
}