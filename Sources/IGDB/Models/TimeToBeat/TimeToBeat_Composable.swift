import Foundation

extension TimeToBeat: Composable {
    // sourcery:inline:TimeToBeat.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \TimeToBeat.identifier: return [CodingKeys.identifier]
        case \TimeToBeat.completely: return [CodingKeys.completely]
        case \TimeToBeat.hastly: return [CodingKeys.hastly]
        case \TimeToBeat.normally: return [CodingKeys.normally]
        case \TimeToBeat.game: return [CodingKeys.game]
        default: break
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try TimeToBeat.codingPath(for: \TimeToBeat.game)
                + Game.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
