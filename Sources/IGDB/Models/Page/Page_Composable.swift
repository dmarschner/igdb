import Foundation

extension Page: Composable {
    // sourcery:inline:Page.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        if type(of: keyPath).rootType is Company.Type {
            return try Page.codingPath(for: \Page.company)
                + Company.codingPath(for: keyPath)
        }

        if type(of: keyPath).rootType is Feed.Type {
            return try Page.codingPath(for: \Page.feed)
                + Feed.codingPath(for: keyPath)
        }

        if type(of: keyPath).rootType is Game.Type {
            return try Page.codingPath(for: \Page.game)
                + Game.codingPath(for: keyPath)
        }

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \Page.identifier: return [CodingKeys.identifier]
        case \Page.createdAt: return [CodingKeys.createdAt]
        case \Page.updatedAt: return [CodingKeys.updatedAt]
        case \Page.background: return [CodingKeys.background]
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
