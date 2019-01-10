import Foundation

/// The format of the date value in companies changes.
///
///     | Value | Human format                             |
///     | ----- | ---------------------------------------- |
///     | 0     | "YYYYMMMMDD"                             |
///     | 1     | "YYYYMMMM"                               |
///     | 2     | "YYYY", for example "1995"               |
///     | 3     | "YYYYQ1", for example "2012Q1"           |
///     | 4     | "YYYYQ2", for example "2012Q2"           |
///     | 5     | "YYYYQ3", for example "2012Q3"           |
///     | 6     | "YYYYQ4", for example "2012Q4"           |
///     | 7     | "TBD"                                    |
public enum DateCategory: Int, Codable {
    case long
    case medium
    case short
    case firstQuarter
    case secondQuarter
    case thirdQuarter
    case fourthQuarter
    case unknown
}
