import Foundation

/// [Filters](https://api-docs.igdb.com/#filters)
///
/// Filters are used to sift through results to get what you want. You can exclude and include results based on their properties.
/// For example you could remove all Games where the `rating` was below 80 (`where rating >= 80`).
///
/// Filters can be used on any entity that has sub-properties such as Games, Companies, People etc.
public typealias Filter<Entity> = String

/// MARK: - Global Filter

/// = Equal: Exact match equal. Examples: `try \.identifier == 4`, `try \.parentGame == nil`
public func ==<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value?) throws -> Filter<Entity> where Entity: Composable {
    return try filter(lhs: lhs, operation: "=", rhs: rhs.map(String.init(describing:)) ?? "null")
}

/// = Equal: Exact match equal. Examples: `try \.identifier == [3, 4, 5]`,
public func ==<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: [Value]) throws -> Filter<Entity> where Entity: Composable {
    let multipleValues = rhs.map({ String(describing: $0) }).joined(separator: ",")
    return try filter(lhs: lhs, operation: "=", rhs: "(\(multipleValues))")
}

/// != Not Equal: Exact match equal. Examples: `try \.identifier != 4`, `try \.parentGame != nil`
public func !=<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value?) throws -> Filter<Entity> where Entity: Composable {
    return try filter(lhs: lhs, operation: "!=", rhs: rhs.map(String.init(describing:)) ?? "null")
}

/// != Not Equal: Exact match equal. Examples: `try \.identifier != [3, 4, 5]`,
public func !=<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: [Value]) throws -> Filter<Entity> where Entity: Composable {
    let multipleValues = rhs.map({ String(describing: $0) }).joined(separator: ",")
    return try filter(lhs: lhs, operation: "!=", rhs: "(\(multipleValues))")
}

/// MARK: - Numeric Filter

/// > Greater than (works only on numbers). Examples: `try \.rating > 79.9`,
public func ><Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value) throws -> Filter<Entity> where Entity: Composable, Value: Numeric {
    return try filter(lhs: lhs, operation: ">", rhs: String(describing: rhs))
}

/// >= Greater than or equal to (works only on numbers). Examples: `try \.rating >= 80.0`,
public func >=<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value) throws -> Filter<Entity> where Entity: Composable, Value: Numeric {
    return try filter(lhs: lhs, operation: ">", rhs: String(describing: rhs))
}

/// < Less than (works only on numbers). Examples: `try \.rating < 79.9`,
public func <<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value) throws -> Filter<Entity> where Entity: Composable, Value: Numeric {
    return try filter(lhs: lhs, operation: ">", rhs: String(describing: rhs))
}

/// <= Less than or equal to (works only on numbers). Examples: `try \.rating <= 80.0`,
public func <=<Entity, Value>(lhs: KeyPath<Entity, Value>, rhs: Value) throws -> Filter<Entity> where Entity: Composable, Value: Numeric {
    return try filter(lhs: lhs, operation: ">", rhs: String(describing: rhs))
}

/// MARK: - String Filter

infix operator =^*: AdditionPrecedence
/// = "Your input string"* Prefix: Exact match on the beginning of the string, can end with anything. (Case sensitive).
public func =^*<Entity>(lhs: KeyPath<Entity, String>, rhs: String) throws -> Filter<Entity> where Entity: Composable {
    return try filter(lhs: lhs, operation: "=", rhs: String(describing: rhs) + "*")
}

infix operator =*&: AdditionPrecedence
/// = *"Your input string" Postfix: Exact match at the end of the string, can start with anything. (Case sensitive).
public func =*&<Entity>(lhs: KeyPath<Entity, String>, rhs: String) throws -> Filter<Entity> where Entity: Composable {
    return try filter(lhs: lhs, operation: "=", rhs: "*" + String(describing: rhs))
}

infix operator =^*&: AdditionPrecedence
/// = *"Your input string"* Infix Exact match in the middle of the string, can start and end with anything. (Case sensitive).
public func =^*&<Entity>(lhs: KeyPath<Entity, String>, rhs: String) throws -> Filter<Entity> where Entity: Composable {
    return try filter(lhs: lhs, operation: "=", rhs: "*" + String(describing: rhs) + "*")
}

infix operator ~^*: AdditionPrecedence
/// ~ "Your input string"* Prefix: Exact match on the beginning of the string, can end with anything. (Case insensitive).
public func ~^*<Entity>(lhs: KeyPath<Entity, String>, rhs: String) throws -> Filter<Entity> where Entity: Composable {
    return try filter(lhs: lhs, operation: "~", rhs: String(describing: rhs) + "*")
}

infix operator ~*&: AdditionPrecedence
/// ~ *"Your input string" Postfix: Exact match at the end of the string, can start with anything. (Case insensitive).
public func ~*&<Entity>(lhs: KeyPath<Entity, String>, rhs: String) throws -> Filter<Entity> where Entity: Composable {
    return try filter(lhs: lhs, operation: "~", rhs: "*" + String(describing: rhs))
}

infix operator ~^*&: AdditionPrecedence
/// ~ *"Your input string"* Infix Exact match in the middle of the string, can start and end with anything. (Case insensitive).
public func ~^*&<Entity>(lhs: KeyPath<Entity, String>, rhs: String) throws -> Filter<Entity> where Entity: Composable {
    return try filter(lhs: lhs, operation: "~", rhs: "*" + String(describing: rhs) + "*")
}

/// MARK: - Factory

private func filter<Entity>(lhs: PartialKeyPath<Entity>, operation: String, rhs: String) throws -> String where Entity: Composable {
    // Will result in something like: "identifier = 3", "release_date < 12332999", ...
    return try "\(Entity.rawCodingPath(for: lhs)) \(operation) \(rhs)"
}

// TODO: Evaluate
//[V1,V2,...Vn] The value exists within the (comma separated) array (AND between values).
//![V1,V2,...Vn] The values must not exist within the (comma separated) array (AND between values).
//(V1,V2,...Vn) The value has any within the (comma separated) array (OR between values).
//!(V1,V2,...Vn) The values must not exist within the (comma separated) array (OR between values).
//{V1,V2,...V2} Exact match on arrays. (Does not work on ids, strings, etc).
