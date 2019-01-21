import Foundation

extension GameEngine: Composable {
    // sourcery:inline:GameEngine.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<GameEngine>) throws -> [CodingKey] {
        switch keyPath {
        case \GameEngine.identifier: return [CodingKeys.identifier]
        case \GameEngine.createdAt: return [CodingKeys.createdAt]
        case \GameEngine.updatedAt: return [CodingKeys.updatedAt]
        case \GameEngine.companies: return [CodingKeys.companies]
        case \GameEngine.description: return [CodingKeys.description]
        case \GameEngine.logo: return [CodingKeys.logo]
        case \GameEngine.logo?.identifier:
            return [CodingKeys.logo, GameEngine.Logo.CodingKeys.identifier]
        case \GameEngine.logo?.isTransparent:
            return [CodingKeys.logo, GameEngine.Logo.CodingKeys.isTransparent]
        case \GameEngine.logo?.animated:
            return [CodingKeys.logo, GameEngine.Logo.CodingKeys.animated]
        case \GameEngine.logo?.url:
            return [CodingKeys.logo, GameEngine.Logo.CodingKeys.url]
        case \GameEngine.logo?.height:
            return [CodingKeys.logo, GameEngine.Logo.CodingKeys.height]
        case \GameEngine.logo?.width:
            return [CodingKeys.logo, GameEngine.Logo.CodingKeys.width]
        case \GameEngine.logo?.imageId:
            return [CodingKeys.logo, GameEngine.Logo.CodingKeys.imageId]
        case \GameEngine.name: return [CodingKeys.name]
        case \GameEngine.platforms: return [CodingKeys.platforms]
        case \GameEngine.slug: return [CodingKeys.slug]
        case \GameEngine.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
