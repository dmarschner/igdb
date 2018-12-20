import Foundation

/// The gender of an actor, character, ...
///
/// [/enum-fields/gender](https://igdb.github.io/api/enum-fields/gender/)
///
///     | Value | Text    |
///     | ----- | ------- |
///     | 0     | Male    |
///     | 1     | Female  |
///     | 2     | Unknown |
public enum Gender: Int, Enumeration {
    case male
    case female
    case unknown
}
