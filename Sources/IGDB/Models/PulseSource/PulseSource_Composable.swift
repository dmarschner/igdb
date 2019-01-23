import Foundation
import Apicalypse

extension PulseSource: Composable {
    // sourcery:inline:PulseSource.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \PulseSource.identifier: return [CodingKeys.identifier]
        case \PulseSource.game: return [CodingKeys.game]
        case \PulseSource.name: return [CodingKeys.name]
        case \PulseSource.page: return [CodingKeys.page]
        default: break
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try PulseSource.codingPath(for: \PulseSource.game)
                + Game.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Page`
        if type(of: keyPath).rootType is Page.Type {
            return try PulseSource.codingPath(for: \PulseSource.page)
                + Page.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
