import Foundation

/// [Involved Company](https://api-docs.igdb.com/#involved-company)
///
/// API path: [/involved_companies](https://api-v3.igdb.com/involved_companies)
public struct InvolvedCompany: Identifiable, Entity, AutoComposable, AutoFilterable, Updatable, Codable {

    /// The API endpoint to request these entities from.
    /// Path: [/involved_companies](https://api-v3.igdb.com/involved_companies)
    public static let requestPath: String = "involved_companies"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    public let company: Expander<Company>?

    public let developer: Bool?

    public let game: Expander<Game>?

    public let porting: Bool?

    public let publisher: Bool?

    public let supporting: Bool?
}
