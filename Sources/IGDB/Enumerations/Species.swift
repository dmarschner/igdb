import Foundation

/// The species of a game character, actor (LUL), ...
///
/// [/enum-fields/species](https://igdb.github.io/api/enum-fields/species/)
///
///     | Value | Text    |
///     | ----- | ------- |
///     | 1     | Human   |
///     | 2     | Alien   |
///     | 3     | Animal  |
///     | 4     | Android |
///     | 5     | Unknown |
public enum Species: Int, Enumeration {
    case human = 1
    case alien
    case animal
    case android
    case unknown
}
