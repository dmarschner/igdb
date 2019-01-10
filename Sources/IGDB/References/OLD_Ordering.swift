import Foundation

/// [Ordering (Sorting)](https://igdb.github.io/api/references/ordering/) is used to order results by a specific field.
///
/// You can order results like this:
///
///     /games/?search=zelda&filter[rating][gte]=80&order=release_dates.date:desc
///
/// Notice the appended `:desc` which could also be `:asc` if required.
///
/// You can also subfilter arrays by appending "max", "min", "sum", "avg" or "median".
/// For example, you can order games based on it's earliest release date like this:
///
///     /games/?search=zelda&order=release_dates.date:desc:min&limit=5
///
/// #### Order by popularity
///
/// Popularity parameter for games. You can access it like this:
///
///     /games/?fields=name,popularity&order=popularity:desc
///
/// The popularity number is calculated using usage statistics of game pages at https://www.igdb.com
///
/// Ordering can be used on any entity.
public struct Order<Endpoint> where Endpoint: IGDB.Endpoint {

    /// Whether it should be sorted along the property ascending or descending
    public enum Sort: String {
        case descending = "desc"
        case ascending = "asc"
    }

    /// Desired sorting along given path
    public var sorting: Sort

    /// The path along which to order the resulting types
    public var path: Endpoint.CodingKeys
}

extension Order {

    /// Initializes a new ordering options
    ///
    /// - Parameters:
    ///   - path: The path along which to order the resulting types
    ///   - sorting: Desired sorting along given path
    public init(_ path: Endpoint.CodingKeys, sorting: Sort) {
        self.sorting = sorting
        self.path = path
    }
}

extension Order  {
}
