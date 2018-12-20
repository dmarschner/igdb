import Foundation

/// The service where the achievement is located
///
/// [/enum-fields/achievement-source](https://igdb.github.io/api/enum-fields/achievement-source/)
///
///     | Value | Service Name |
///     | ----- | ------------ |
///     | 1     | Playstation  |
///     | 2     | XBOX         |
///     | 3     | Steam        |
public enum AchievementSource: Int, Enumeration {
    case playstation = 1
    case xbox
    case steam
}
