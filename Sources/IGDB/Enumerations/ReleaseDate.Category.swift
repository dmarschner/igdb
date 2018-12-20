import Foundation

public extension ReleaseDate {

    /// The format of the date value in the release date.
    ///
    /// [/enum-fields/date-category](https://igdb.github.io/api/enum-fields/date-category/)
    ///
    ///     | Value | Human format                             |
    ///     | ----- | ---------------------------------------- |
    ///     | 0     | "YYYY MMM DD", for example "2001 Nov 13" |
    ///     | 1     | "YYYY-MMM", for example "1999-May"       |
    ///     | 2     | "YYYY", for example "1995"               |
    ///     | 3     | "YYYY-Q1", for example "2012-Q1"         |
    ///     | 4     | "YYYY-Q2", for example "2012-Q2"         |
    ///     | 5     | "YYYY-Q3", for example "2012-Q3"         |
    ///     | 6     | "YYYY-Q4", for example "2012-Q4"         |
    ///     | 7     | "TBD"                                    |
    public enum Category: Int, Enumeration {
        case long
        case medium
        case short
        case firstQuarter
        case secondQuarter
        case thirdQuarter
        case fourthQuarter
        case unknown
    }
}
