import Foundation

/// [Product Family](https://api-docs.igdb.com/#product-family)
///
/// A collection of closely related platforms
public struct ProductFamily: Identifiable {

    /// The API endpoint to request these entities from.
    /// Path: [/product_families](https://api-v3.igdb.com/product_families)
    public static let requestPath: String = "product_families"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// The name of the product family
    public let name: String?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?
}
