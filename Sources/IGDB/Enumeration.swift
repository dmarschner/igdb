import Foundation

/// The common [enumerated field](https://igdb.github.io/api/enum-fields/) definition.
///
/// Enumerated fields are fields which's value can only come from a limited set of possible values.
///
/// One good example is a Character's Gender.
public typealias Enumeration = Codable & RawRepresentable
