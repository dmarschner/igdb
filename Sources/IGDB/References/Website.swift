import Foundation

/// A generic website, as used for `Company` and `Game`
public class Website: Codable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum CodingKeys: String, CodingKey, Field {
        case trusted, category, url
    }

    /// Whether is a trusted site, or not
    public let trusted: Bool?

    /// The service this website links to
    public let category: Category?

    /// The website address (URL) of the item
    public let url: String?
}
