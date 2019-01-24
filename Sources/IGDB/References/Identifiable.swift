import Foundation
import Apicalypse

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

// MARK: One to One.Identifier

public func == <Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value.Identifier)
    throws -> Filter where Entity: Composable, Value: Identifiable {
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: EquatableOperator.equal, value: String(describing: rhs))
}

public func != <Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value.Identifier)
    throws -> Filter where Entity: Composable, Value: Identifiable {
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: EquatableOperator.notEqual, value: String(describing: rhs))
}

// MARK: One to Many.Identifier

public func == <Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: EquatableOperator.equal, value: String(describing: rhs))
}

public func != <Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: EquatableOperator.notEqual, value: String(describing: rhs))
}

// MARK: Many to Many.Identifier

public func == <Entity, Value>(lhs: KeyPath<Entity, [Value]>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        let value = rhs.map(String.init(describing:)).joined(separator: ",")
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: CollectionOperator.containsAll, value: value)
}

public func === <Entity, Value>(lhs: KeyPath<Entity, [Value]>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        let value = rhs.map(String.init(describing:)).joined(separator: ",")
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: CollectionOperator.containsExclusively, value: value)
}

public func ~= <Entity, Value>(lhs: KeyPath<Entity, [Value]>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        let value = rhs.map(String.init(describing:)).joined(separator: ",")
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: CollectionOperator.containsAtLeastOne, value: value)
}

public func != <Entity, Value>(lhs: KeyPath<Entity, [Value]>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        let value = rhs.map(String.init(describing:)).joined(separator: ",")
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: CollectionOperator.containsNone, value: value)
}

// MARK: Many? to Many.Identifier

public func == <Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        let value = rhs.map(String.init(describing:)).joined(separator: ",")
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: CollectionOperator.containsAll, value: value)
}

public func === <Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        let value = rhs.map(String.init(describing:)).joined(separator: ",")
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: CollectionOperator.containsExclusively, value: value)
}

public func ~= <Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        let value = rhs.map(String.init(describing:)).joined(separator: ",")
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: CollectionOperator.containsAtLeastOne, value: value)
}

public func != <Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: [Value.Identifier])
    throws -> Filter where Entity: Composable, Value: Identifiable {
        let value = rhs.map(String.init(describing:)).joined(separator: ",")
        return try Filter(property: Entity.codingPath(for: lhs),
            operator: CollectionOperator.containsNone, value: value)
}
