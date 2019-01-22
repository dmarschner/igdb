import Foundation

/// Identifiables or ([Endpoints](https://api-docs.igdb.com/#endpoints) are unique, i.e. have a
/// unique identifier within the API and a unique Endpoint, i.e. request path, to request them.
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

    /// The API endpoint to request these entities from
    static var requestPath: String { get }
}

/// Allows multiple entities to be used as identifiable proxy elements
extension Array: Identifiable where Element: Identifiable {

    /// The identifier value type
    public typealias Identifier = [Element.Identifier]

    /// The API endpoint to request these entities from
    public static var requestPath: String { return Element.requestPath }

    /// The unique resource identifier to this specific entry
    public var identifier: [Element.Identifier] {
        return map({ $0.identifier })
    }
}

extension Filter {

    /// Allows direct Identifier counterpart comparison, like \IGDB.Game.parentGame == 5, \IGDB.Game.platforms == [4,3,7], ...
    public init<Value>(lhs: KeyPath<Entity, Value>, operation: String, rhs: Value.Identifier) throws where Value: Identifiable {
        try self.init(lhs: Entity.codingPath(for: lhs), operation: operation, rhs: String(describing: rhs))
    }

    /// Allows single Identifier comparison on collection, like \IGDB.Game.platforms == 4
    public init<Value>(lhs: KeyPath<Entity, Value?>, operation: String, rhs: Value.Element.Identifier)
        throws where Value: Swift.Collection, Value.Element: Identifiable {
            try self.init(lhs: Entity.codingPath(for: lhs), operation: operation, rhs: String(describing: rhs))
    }
}

/// Allows direct Identifier counterpart comparison, like \IGDB.Game.parentGame == 5, \IGDB.Game.platforms == [4,3,7], ...
public func ==<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value.Identifier)
    throws -> Filter<Entity> where Entity: Composable, Value: Identifiable {
        return try Filter(lhs: lhs, operation: "=", rhs: rhs)
}

/// Allows direct Identifier counterpart comparison, like \IGDB.Game.parentGame != 5, \IGDB.Game.platforms != [4,3,7], ...
public func !=<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value.Identifier)
    throws -> Filter<Entity> where Entity: Composable, Value: Identifiable {
        return try Filter(lhs: lhs, operation: "!=", rhs: rhs)
}

/// Allows single Identifier comparison on collection, like \IGDB.Game.platforms == 4
public func ==<Entity, Value>(lhs: KeyPath<Entity, Value?>, rhs: Value.Element.Identifier)
    throws -> Filter<Entity> where Value: Swift.Collection, Value.Element: Identifiable {
        return try Filter(lhs: lhs, operation: "=", rhs: rhs)
}

/// Allows single Identifier comparison on collection, like \IGDB.Game.platforms != 4
public func !=<Entity, Value>(lhs: KeyPath<Entity, Value?>, rhs: Value.Element.Identifier)
    throws -> Filter<Entity> where Value: Swift.Collection, Value.Element: Identifiable {
        return try Filter(lhs: lhs, operation: "!=", rhs: rhs)
}
