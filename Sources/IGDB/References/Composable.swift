import Foundation

/// A `Field` is a property of an entity.
///
/// For example, a Game field would be `rating` or `release_dates`.
/// Some fields have properties of their own, for example, the `esrb` field has the property `synopsis`.
///
/// Fields can be used on any entity that has sub-properties such as Games, Companies, People etc.
///
/// Fields are requested in a comma separated list. For example, to get some information for some
/// Games, Genres, Themes or anything else, you could request it like this:
///
///     /games/4356,189,444?fields=name,release_dates,esrb.synopsis,rating
///
/// Note the `synopsis` property of `esrb` can be accessed directly with a dot.
///
/// A full list of fields can be obtained by passing a `*` as a field.
/// Alternatively you can use the `meta` postfix: `/games/meta` to get a list of all fields.
public protocol Field: CaseIterable, RawRepresentable where Self.RawValue == String {}

// TODO: Check if necessary or allCases instead
public extension Field {

    /// Accesses the full list of fields
    public static var wildcard: String {
        return "*"
    }
}

/// `Composable` entities may be selectivly requested with required properties only.
///
/// It allows to define what properties of an entity should be returned upon requesting an entity (or multiple entities)
public protocol Composable {

    /// A type that can be used as keys for expressing required fields, sorting & filtering
    associatedtype Fields: Field // TODO: Make it codable and codingkeys
}
