import Foundation

extension Achievement: Composable {
    // sourcery:inline:Achievement.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Achievement.identifier: return [CodingKeys.identifier]
        case \Achievement.createdAt: return [CodingKeys.createdAt]
        case \Achievement.updatedAt: return [CodingKeys.updatedAt]
        case \Achievement.icon: return [CodingKeys.icon]
        case \Achievement.category: return [CodingKeys.category]
        case \Achievement.description: return [CodingKeys.description]
        case \Achievement.externalId: return [CodingKeys.externalId]
        case \Achievement.game: return [CodingKeys.game]
        case \Achievement.language: return [CodingKeys.language]
        case \Achievement.name: return [CodingKeys.name]
        case \Achievement.ownersPercentage: return [CodingKeys.ownersPercentage]
        case \Achievement.rank: return [CodingKeys.rank]
        case \Achievement.slug: return [CodingKeys.slug]
        case \Achievement.tags: return [CodingKeys.tags]
        default: break
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try Achievement.codingPath(for: \Achievement.game)
                + Game.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
