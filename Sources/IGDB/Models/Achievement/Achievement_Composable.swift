import Foundation

extension Achievement: Composable {
    // sourcery:inline:Achievement.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Achievement>) throws -> [CodingKey] {
        switch keyPath {
        case \Achievement.identifier: return [CodingKeys.identifier]
        case \Achievement.createdAt: return [CodingKeys.createdAt]
        case \Achievement.updatedAt: return [CodingKeys.updatedAt]
        case \Achievement.icon: return [CodingKeys.icon]
        case \Achievement.icon?.identifier:
            return [CodingKeys.icon, Achievement.Icon.CodingKeys.identifier]
        case \Achievement.icon?.isTransparent:
            return [CodingKeys.icon, Achievement.Icon.CodingKeys.isTransparent]
        case \Achievement.icon?.animated:
            return [CodingKeys.icon, Achievement.Icon.CodingKeys.animated]
        case \Achievement.icon?.url:
            return [CodingKeys.icon, Achievement.Icon.CodingKeys.url]
        case \Achievement.icon?.height:
            return [CodingKeys.icon, Achievement.Icon.CodingKeys.height]
        case \Achievement.icon?.width:
            return [CodingKeys.icon, Achievement.Icon.CodingKeys.width]
        case \Achievement.icon?.imageId:
            return [CodingKeys.icon, Achievement.Icon.CodingKeys.imageId]
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
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
