import Foundation

public extension Platform {

    /// [Platform Version Company](https://api-docs.igdb.com/#platform-version-company)
    ///
    /// A platform developer
    ///
    /// Request Path: https://api-v3.igdb.com/platform_version_companies
    public final class Company: Endpoint, Composable {

        /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
        public enum Fields: String, CodingKey, Field {
            case comment, company, developer, manufacturer
        }

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
