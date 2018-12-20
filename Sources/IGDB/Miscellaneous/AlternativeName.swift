import Foundation

/// An [alternative name](https://igdb.github.io/api/misc-objects/alternative-name/) of a game, company, ...
///
///     | Name    | Type             | Mandatory |
///     | ------- | ---------------- |:---------:|
///     | name    | string           |     +     |
///     | comment | string           |     -     |
///
/// ### Representation
///
///     {
///         "name": "Thief: o Projeto Negro",
///         "comment": "Brazilian title"
///     }
public struct AlternativeName: Miscellaneous {

    /// The alterative name value
    public let name: String

    /// A descriptive comment to what this alternative name may represent
    public let comment: String?
}
