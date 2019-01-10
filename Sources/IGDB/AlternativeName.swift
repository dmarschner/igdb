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
public final class AlternativeName: Endpoint, Composable {

    /// A type that can be used as keys for coding as well as for expressing required fields, sorting & filtering
    public enum Fields: String, CodingKey, Field {
        case comment, name
    }

    /// A description of what kind of alternative name it is (Acronym, Working title, Japanese title etc)
    public let comment: String?

    /// An alternative name
    public let name: String?
}
