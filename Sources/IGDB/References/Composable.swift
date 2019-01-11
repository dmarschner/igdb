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
public protocol Field: CaseIterable, RawRepresentable where Self.RawValue == String {}

/// `Composable` entities may be selectivly requested with required properties only.
///
/// It allows to define what properties of an entity should be returned upon requesting an entity (or multiple entities)
public protocol Composable {

    /// A type that can be used as keys for expressing required fields
    associatedtype Fields: Field
}

internal protocol AutoComposable {} // Used by sourcery for auto-generation
