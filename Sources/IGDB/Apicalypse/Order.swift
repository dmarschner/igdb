import Foundation

/// [Sorting](https://api-docs.igdb.com/#sorting)
///
/// What?
///
/// Sorting is used to order results by a specific field.
public enum Order: String {
    case ascending = "asc"
    case descending = "desc"
}
