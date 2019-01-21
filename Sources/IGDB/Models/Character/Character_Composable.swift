import Foundation

extension Character: Composable {
    // sourcery:inline:Character.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Character>) throws -> [CodingKey] {
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
        case \Character.mugShot?.identifier:
            return [CodingKeys.mugShot, Character.MugShot.CodingKeys.identifier]
        case \Character.mugShot?.isTransparent:
            return [CodingKeys.mugShot, Character.MugShot.CodingKeys.isTransparent]
        case \Character.mugShot?.animated:
            return [CodingKeys.mugShot, Character.MugShot.CodingKeys.animated]
        case \Character.mugShot?.url:
            return [CodingKeys.mugShot, Character.MugShot.CodingKeys.url]
        case \Character.mugShot?.height:
            return [CodingKeys.mugShot, Character.MugShot.CodingKeys.height]
        case \Character.mugShot?.width:
            return [CodingKeys.mugShot, Character.MugShot.CodingKeys.width]
        case \Character.mugShot?.imageId:
            return [CodingKeys.mugShot, Character.MugShot.CodingKeys.imageId]
        case \Character.name: return [CodingKeys.name]
        case \Character.people: return [CodingKeys.people]
        case \Character.slug: return [CodingKeys.slug]
        case \Character.species: return [CodingKeys.species]
        case \Character.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
