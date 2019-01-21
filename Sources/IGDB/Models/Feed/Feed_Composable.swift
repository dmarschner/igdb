import Foundation

extension Feed: Composable {
    // sourcery:inline:Feed.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Feed.identifier: return [CodingKeys.identifier]
        case \Feed.createdAt: return [CodingKeys.createdAt]
        case \Feed.updatedAt: return [CodingKeys.updatedAt]
        case \Feed.category: return [CodingKeys.category]
        case \Feed.content: return [CodingKeys.content]
        case \Feed.feedLikesCount: return [CodingKeys.feedLikesCount]
        case \Feed.feedVideo: return [CodingKeys.feedVideo]
        case \Feed.games: return [CodingKeys.games]
        case \Feed.meta: return [CodingKeys.meta]
        case \Feed.publishedAt: return [CodingKeys.publishedAt]
        case \Feed.pulse: return [CodingKeys.pulse]
        case \Feed.slug: return [CodingKeys.slug]
        case \Feed.title: return [CodingKeys.title]
        case \Feed.uid: return [CodingKeys.uid]
        case \Feed.url: return [CodingKeys.url]
        case \Feed.user: return [CodingKeys.user]
        default: break
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try Feed.codingPath(for: \Feed.games)
                + Game.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Video`
        if type(of: keyPath).rootType is Video.Type {
            return try Feed.codingPath(for: \Feed.feedVideo)
                + Video.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
