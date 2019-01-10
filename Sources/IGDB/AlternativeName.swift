import Foundation

// TODO: Right now, game only - check later and move to Game scope if necessary

/// [Alternative and international](https://api-docs.igdb.com/#alternative-name) game titles
///
///     {
///         "name": "Thief: o Projeto Negro",
///         "comment": "Brazilian title"
///     }
///
/// API path: [/alternative_names](https://api-v3.igdb.com/alternative_names)
public struct AlternativeName: Codable, Identifiable, Composable {

    // sourcery:inline:AlternativeName.CodingKeys

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case comment
        case name
    }
    // sourcery:end

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// A description of what kind of alternative name it is (Acronym, Working title, Japanese title etc)
    public let comment: String?

    /// An alternative name
    public let name: String?
}
