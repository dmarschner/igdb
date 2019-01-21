import Foundation

extension Character: Composable {
    // sourcery:inline:Character.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Character.identifier: return [CodingKeys.identifier]
        case \Character.createdAt: return [CodingKeys.createdAt]
        case \Character.updatedAt: return [CodingKeys.updatedAt]
        case \Character.akas: return [CodingKeys.akas]
        case \Character.countryName: return [CodingKeys.countryName]
        case \Character.description: return [CodingKeys.description]
        case \Character.games: return [CodingKeys.games]
        case \Character.gender: return [CodingKeys.gender]
        case \Character.mugShot: return [CodingKeys.mugShot]
        case \Character.name: return [CodingKeys.name]
        case \Character.people: return [CodingKeys.people]
        case \Character.slug: return [CodingKeys.slug]
        case \Character.species: return [CodingKeys.species]
        case \Character.url: return [CodingKeys.url]
        default: break
        }

        // Evaluate the `keyPath`s in `Character`
        if type(of: keyPath).rootType is Character.Type {
            return try Character.codingPath(for: \Character.people)
                + Character.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try Character.codingPath(for: \Character.games)
                + Game.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
