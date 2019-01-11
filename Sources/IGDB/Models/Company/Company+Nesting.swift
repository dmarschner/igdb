import Foundation

extension Company {

    /// [Company Logo](https://api-docs.igdb.com/#company-logo)
    ///
    /// The logos of developers and publishers
    ///
    /// Request Path: https://api-v3.igdb.com/company_logos
    public typealias Logo = Image

    /// [Company Website](https://api-docs.igdb.com/#company-website)
    ///
    /// Company Website
    ///
    /// Request Path: https://api-v3.igdb.com/company_websites
    public typealias Website = IGDB.Website
}
