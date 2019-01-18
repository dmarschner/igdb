import Foundation

extension Achievement {

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
