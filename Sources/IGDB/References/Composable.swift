import Foundation

/// `Composable` entities may be selectivly requested with required properties only.
///
/// It allows to define what properties of an entity should be returned upon requesting an entity (or multiple entities)
public protocol Composable {

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey]
}

extension Composable { // Internal helper

    /// Returns the raw coding path to given `keyPath`. For example: "game", "game.title", ...
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The raw coding key path it takes to get to given `keyPath`
    internal static func rawCodingPath(for keyPath: AnyKeyPath) throws -> String {
        return try codingPath(for: keyPath).map({ $0.stringValue }).joined(separator: ".")
    }
}
