import Foundation

extension Platform: Composable {
    // sourcery:inline:Platform.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Platform>) throws -> [CodingKey] {
        switch keyPath {
        case \Platform.identifier: return [CodingKeys.identifier]
        case \Platform.createdAt: return [CodingKeys.createdAt]
        case \Platform.updatedAt: return [CodingKeys.updatedAt]
        case \Platform.abbreviation: return [CodingKeys.abbreviation]
        case \Platform.alternativeName: return [CodingKeys.alternativeName]
        case \Platform.category: return [CodingKeys.category]
        case \Platform.generation: return [CodingKeys.generation]
        case \Platform.name: return [CodingKeys.name]
        case \Platform.platformLogo: return [CodingKeys.platformLogo]
        case \Platform.platformLogo?.identifier:
            return [CodingKeys.platformLogo, Platform.Logo.CodingKeys.identifier]
        case \Platform.platformLogo?.isTransparent:
            return [CodingKeys.platformLogo, Platform.Logo.CodingKeys.isTransparent]
        case \Platform.platformLogo?.animated:
            return [CodingKeys.platformLogo, Platform.Logo.CodingKeys.animated]
        case \Platform.platformLogo?.url:
            return [CodingKeys.platformLogo, Platform.Logo.CodingKeys.url]
        case \Platform.platformLogo?.height:
            return [CodingKeys.platformLogo, Platform.Logo.CodingKeys.height]
        case \Platform.platformLogo?.width:
            return [CodingKeys.platformLogo, Platform.Logo.CodingKeys.width]
        case \Platform.platformLogo?.imageId:
            return [CodingKeys.platformLogo, Platform.Logo.CodingKeys.imageId]
        case \Platform.productFamily: return [CodingKeys.productFamily]
        case \Platform.slug: return [CodingKeys.slug]
        case \Platform.summary: return [CodingKeys.summary]
        case \Platform.url: return [CodingKeys.url]
        case \Platform.versions: return [CodingKeys.versions]
        case \Platform.websites: return [CodingKeys.websites]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
