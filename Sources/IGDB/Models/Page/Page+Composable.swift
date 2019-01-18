import Foundation

extension Page: Composable {
    // sourcery:inline:Page.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Page>) throws -> [CodingKey] {
        switch keyPath {
        case \Page.identifier: return [CodingKeys.identifier]
        case \Page.createdAt: return [CodingKeys.createdAt]
        case \Page.updatedAt: return [CodingKeys.updatedAt]
        case \Page.background: return [CodingKeys.background]
        case \Page.background?.identifier:
            return [CodingKeys.background, Page.Background.CodingKeys.identifier]
        case \Page.background?.isTransparent:
            return [CodingKeys.background, Page.Background.CodingKeys.isTransparent]
        case \Page.background?.animated:
            return [CodingKeys.background, Page.Background.CodingKeys.animated]
        case \Page.background?.url:
            return [CodingKeys.background, Page.Background.CodingKeys.url]
        case \Page.background?.height:
            return [CodingKeys.background, Page.Background.CodingKeys.height]
        case \Page.background?.width:
            return [CodingKeys.background, Page.Background.CodingKeys.width]
        case \Page.background?.imageHash:
            return [CodingKeys.background, Page.Background.CodingKeys.imageHash]
        case \Page.battlenet: return [CodingKeys.battlenet]
        case \Page.category: return [CodingKeys.category]
        case \Page.color: return [CodingKeys.color]
        case \Page.company: return [CodingKeys.company]
        case \Page.country: return [CodingKeys.country]
        case \Page.description: return [CodingKeys.description]
        case \Page.feed: return [CodingKeys.feed]
        case \Page.game: return [CodingKeys.game]
        case \Page.name: return [CodingKeys.name]
        case \Page.origin: return [CodingKeys.origin]
        case \Page.pageFollowsCount: return [CodingKeys.pageFollowsCount]
        case \Page.pageLogo: return [CodingKeys.pageLogo]
        case \Page.pageLogo?.identifier:
            return [CodingKeys.pageLogo, Page.Logo.CodingKeys.identifier]
        case \Page.pageLogo?.isTransparent:
            return [CodingKeys.pageLogo, Page.Logo.CodingKeys.isTransparent]
        case \Page.pageLogo?.animated:
            return [CodingKeys.pageLogo, Page.Logo.CodingKeys.animated]
        case \Page.pageLogo?.url:
            return [CodingKeys.pageLogo, Page.Logo.CodingKeys.url]
        case \Page.pageLogo?.height:
            return [CodingKeys.pageLogo, Page.Logo.CodingKeys.height]
        case \Page.pageLogo?.width:
            return [CodingKeys.pageLogo, Page.Logo.CodingKeys.width]
        case \Page.pageLogo?.imageHash:
            return [CodingKeys.pageLogo, Page.Logo.CodingKeys.imageHash]
        case \Page.slug: return [CodingKeys.slug]
        case \Page.subCategory: return [CodingKeys.subCategory]
        case \Page.uplay: return [CodingKeys.uplay]
        case \Page.url: return [CodingKeys.url]
        case \Page.websites: return [CodingKeys.websites]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
