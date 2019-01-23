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

// MARK: - Identifiable Filter

/// Allows direct Identifier counterpart comparison, like \IGDB.Game.parentGame == 5, \IGDB.Game.platforms == [4,3,7], ...
public func ==<Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: Value.Identifier)
    throws -> Filter<Entity> where Entity: Composable, Value: Identifiable {
        return try Filter(field: lhs, comparison: EquatableOperator.equal, value: String(describing: rhs))
}

/// Allows direct Identifier counterpart comparison, like \IGDB.Game.parentGame != 5, \IGDB.Game.platforms != [4,3,7], ...
public func !=<Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: Value.Identifier)
    throws -> Filter<Entity> where Entity: Composable, Value: Identifiable {
        return try Filter(field: lhs, comparison: EquatableOperator.notEqual, value: String(describing: rhs))
}

public func ==<Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: [Value.Identifier])
    throws -> Filter<Entity> where Entity: Composable, Value: Identifiable & Swift.Collection {
        return try Filter(field: lhs, comparison: CollectionOperator.containsExclusively, value: String(describing: rhs))
}

public func ~=<Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: [Value.Identifier])
    throws -> Filter<Entity> where Entity: Composable, Value: Identifiable & Swift.Collection {
        return try Filter(field: lhs, comparison: CollectionOperator.containsAll, value: String(describing: rhs))
}

public func *=<Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: [Value.Identifier])
    throws -> Filter<Entity> where Entity: Composable, Value: Identifiable & Swift.Collection {
        return try Filter(field: lhs, comparison: CollectionOperator.containsAtLeastOne, value: String(describing: rhs))
}

public func !=<Entity, Value>(lhs: KeyPath<Entity, [Value]?>, rhs: [Value.Identifier])
    throws -> Filter<Entity> where Entity: Composable, Value: Identifiable & Swift.Collection {
        return try Filter(field: lhs, comparison: CollectionOperator.containsNone, value: String(describing: rhs))
}
