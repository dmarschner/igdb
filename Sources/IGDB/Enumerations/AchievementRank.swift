import Foundation

/// The rank of the achievement
///
/// [/enum-fields/achievement-rank](https://igdb.github.io/api/enum-fields/achievement-rank/)
///
/// ### Playstation
///
///     | Value | Rank Name |
///     | ----- | --------- |
///     | 1     | Bronze    |
///     | 2     | Silver    |
///     | 3     | Gold      |
///     | 4     | Platinum  |
public enum AchievementRank: Int, Enumeration {
    case bronze = 1
    case silver
    case gold
    case platinum
}
