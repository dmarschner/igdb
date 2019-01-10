import Foundation

/// [Filters](https://igdb.github.io/api/references/filters/) are used to sift through results to get what you want.
///
/// You can exclude and include results based on their properties.
/// For example you could remove all Games where the `rating` was below 80 (`filter[rating][gte]=80`).
///
/// Filters are parameter arrays so must be added using special keys like this:
///
///     /games/?search=zelda&filter[rating][gte]=80&filter[release_dates.date][gt]=YYYY-MM-DD
///
/// The filter itself comprises of 2 parts; The `field` and the `postfix`.
/// Fields are described in the section on the left, postfixes are described below.
///
/// Filters can be used on any entity that has sub-properties such as Games, Companies, People etc.
///
/// Speciality: `search` This parameter is not like other filters. It is an independant parameter that performs a full text search.
///
///     /games/?search=zelda
///
/// Available Operations
///
// TODO: Add missing operations
///
/// The `id` field is special and cannot be filtered.
/// - Invalid: `/games/?filter[id][eq]=4032&fields=name`
/// - Valid: `/games/4032?fields=name`
///
/// - Note:
///
///     Applying any postfix to the field `id` are not supported except for `not_in` which can be used to filter away specific results.
///
/// - Attention:
///
///     Setting the `order` parameter will override the default `relevance` ordering of search results.
///
/// - Example:
///
/// **Filter by multiple platforms**
///
/// If you checkout the platforms endpoint:
///
///     /platforms/?fields=name&limit=50
///
/// You will find the names and id's of the platform. Select the ones you want.
/// Then when you know the ID's of the platform:
///
///     /games/?fields=*&filter[release_dates.platform][any]=48,49,6
///
/// This will give you games that are released on PS4 or XBOX ONE or PC
public struct Filter<Endpoint> where Endpoint: IGDB.Endpoint {

    public let variable: String

    public let operation: String

    public let value: String
    /*
    /// - `eq` Equal: Exact match equal.
    public static func `where`<Value>(_ lhs: KeyPath<Endpoint, Value>, is rhs: Value) -> Filter {
        return .init(variable: lhs.<#T##String#>, operation: "eq", value: String(rhs))
    }
*/
    /*
     ## Available Postfixes


     - `not_eq` Not Equal: Exact match equal.
     - `gt` Greater than works only on numbers.
     - `gte` Greater than or equal to works only on numbers.
     - `lt` Less than works only on numbers.
     - `lte` Less than or equal to works only on numbers.
     - `prefix` Prefix of a value only works on strings.
     - `exists` The value is not null.
     - `not_exists` The value is null.
     - `in` The value exists within the (comma separated) array (AND between values).
     - `not_in` The values must not exists within the (comma separated) array (AND between values).
     - `any` The value has any within the (comma separated) array (OR between values).
     */
}

extension Filter {
}

extension Filter  {
}
