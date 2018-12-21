import Foundation

public extension Achievement {

    /// The service where the [Achievement](https://api-docs.igdb.com/?swift#achievement) is located
    ///
    ///     | Value | Service Name |
    ///     | ----- | ------------ |
    ///     | 1     | Playstation  |
    ///     | 2     | Xbox         |
    ///     | 3     | Steam        |
    public enum Category: Int, Enumeration {
        case playstation = 1
        case xbox
        case steam
    }
}
