import Foundation

/// [Product Family](https://api-docs.igdb.com/#product-family)
///
/// A collection of closely related platforms
///
/// API path: [/product_families](https://api-v3.igdb.com/product_families)
public final class ProductFamily: Endpoint, Composable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case name, slug
    }

    /// The name of the product family
    public let name: String?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?
}
