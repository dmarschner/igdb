import Foundation

/// A `Field` is a property of an entity.
///
/// For example, a Game field would be `rating` or `release_dates`.
/// Some fields have properties of their own, for example, the `esrb` field has the property `synopsis`.
///
/// Fields can be used on any entity that has sub-properties such as Games, Companies, People etc.
///
/// Fields are requested in a comma separated list suffixed by "fields"
///
/// A full list of fields can be obtained by passing a `*` as a field.
public protocol Filter {

    var stringValue: String { get }
}

/// `Composable` entities may requested filtered by a fixed set of conditions
///
/// It allows to re-define a what entity should be returned upon requesting multiple entities
public protocol Filterable {

    /// A type that can be used to filter entities
    associatedtype Filters: Filter
}

internal protocol AutoFilterable {} // Used by sourcery for auto-generation
