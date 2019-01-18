import Foundation

/// [Alternative and international](https://api-docs.igdb.com/#alternative-name) game titles
///
///     {
///         "id": 32376,
///         "name": "Thief: o Projeto Negro",
///         "comment": "Brazilian title"
///     }
public struct AlternativeName: Identifiable {

    /// The API endpoint to request these entities from.
    /// Path: [/alternative_names](https://api-v3.igdb.com/alternative_names)
    public static let requestPath: String = "alternative_names"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// A description of what kind of alternative name it is (Acronym, Working title, Japanese title etc)
    public let comment: String?

    /// An alternative name
    public let name: String?
}
