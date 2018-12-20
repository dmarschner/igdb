import Foundation

/// [External](https://igdb.github.io/api/misc-objects/external/) identifier
///
///     | Name          | Type             | Mandatory | Comment              |
///     | ------------- | ---------------- |:---------:| -------------------- |
///     | steam         | string           |     -     | The steam identifier |
///
/// ### Representation
///
///     {
///         "steam": "294810"
///     }
public struct External: Miscellaneous {

    /// The steam identifier
    public let steam: String?
}
