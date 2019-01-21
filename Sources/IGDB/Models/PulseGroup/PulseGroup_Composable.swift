import Foundation

extension PulseGroup: Composable {
    // sourcery:inline:PulseGroup.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \PulseGroup.identifier: return [CodingKeys.identifier]
        case \PulseGroup.createdAt: return [CodingKeys.createdAt]
        case \PulseGroup.updatedAt: return [CodingKeys.updatedAt]
        case \PulseGroup.game: return [CodingKeys.game]
        case \PulseGroup.name: return [CodingKeys.name]
        case \PulseGroup.publishedAt: return [CodingKeys.publishedAt]
        case \PulseGroup.pulses: return [CodingKeys.pulses]
        case \PulseGroup.tags: return [CodingKeys.tags]
        default: break
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try PulseGroup.codingPath(for: \PulseGroup.game)
                + Game.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Pulse`
        if type(of: keyPath).rootType is Pulse.Type {
            return try PulseGroup.codingPath(for: \PulseGroup.pulses)
                + Pulse.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
