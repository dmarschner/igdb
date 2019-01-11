import Foundation

/// Identifiables or ([Endpoints](https://api-docs.igdb.com/#endpoints) that are unique, i.e. have a unique identifier within the API.
///
/// Base API path: [https://api-v3.igdb.com](https://api-v3.igdb.com)
///
/// In order to communicate with the server, you will have to send these headers.
///
///     | HTTP Header | Value            |
///     | ----------- | ---------------- |
///     | user-key    | <your-key>       |
///     | accept      | application/json |
///
/// All the responses contain the following field in the result:
///
///     | Name       | Type                                                   | Mandatory |
///     | ---------- | ------------------------------------------------------ | --------- |
///     | id         | <Identifier> (most probably `unsigned 64-bit integer`) | +         |
///
/// ### Representation
///
///     {
///         ...
///         "id": 1234,
///         ...
///     }
public protocol Identifiable {

    /// The identifier value type
    associatedtype Identifier: Codable

    /// The unique resource identifier to this specific entry
    var identifier: Identifier { get }
}

/// Allows multiple entities to be used as identifiable proxy elements
extension Array: Identifiable where Element: Identifiable {

    /// The identifier value type
    public typealias Identifier = [Element.Identifier]

    /// The unique resource identifier to this specific entry
    public var identifier: [Element.Identifier] {
        return map({$0.identifier})
    }
}
