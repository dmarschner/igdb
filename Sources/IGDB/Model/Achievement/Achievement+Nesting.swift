import Foundation

extension Achievement {

    /// [Achievement Icon](https://api-docs.igdb.com/?swift#achievement-icon)
    ///
    /// An icon for a specific achievement
    ///
    /// Request Path: https://api-v3.igdb.com/achievement_icons
    public typealias Icon = Image

    /// The service where the [Achievement](https://api-docs.igdb.com/?swift#achievement) is located
    ///
    ///     | Value | Service Name |
    ///     | ----- | ------------ |
    ///     | 1     | Playstation  |
    ///     | 2     | Xbox         |
    ///     | 3     | Steam        |
    public enum Category: Int, Codable {
        case playstation = 1
        case xbox
        case steam
    }

    /// The rank of the [Achievement](https://api-docs.igdb.com/?swift#achievement)
    ///
    ///     | Value | Rank Name |
    ///     | ----- | --------- |
    ///     | 1     | Bronze    |
    ///     | 2     | Silver    |
    ///     | 3     | Gold      |
    ///     | 4     | Platinum  |
    public enum Rank: Int, Codable {
        case bronze = 1
        case silver
        case gold
        case platinum
    }
}
