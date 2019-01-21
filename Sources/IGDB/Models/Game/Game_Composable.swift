import Foundation

extension Game: Composable {
    // sourcery:inline:Game.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Game>) throws -> [CodingKey] {
        switch keyPath {
        case \Game.identifier: return [CodingKeys.identifier]
        case \Game.createdAt: return [CodingKeys.createdAt]
        case \Game.updatedAt: return [CodingKeys.updatedAt]
        case \Game.ageRatings: return [CodingKeys.ageRatings]
        case \Game.aggregatedRating: return [CodingKeys.aggregatedRating]
        case \Game.aggregatedRatingCount: return [CodingKeys.aggregatedRatingCount]
        case \Game.alternativeNames: return [CodingKeys.alternativeNames]
        case \Game.bundles: return [CodingKeys.bundles]
        case \Game.category: return [CodingKeys.category]
        case \Game.collection: return [CodingKeys.collection]
        case \Game.cover: return [CodingKeys.cover]
        case \Game.cover?.identifier:
            return [CodingKeys.cover, Game.Cover.CodingKeys.identifier]
        case \Game.cover?.isTransparent:
            return [CodingKeys.cover, Game.Cover.CodingKeys.isTransparent]
        case \Game.cover?.animated:
            return [CodingKeys.cover, Game.Cover.CodingKeys.animated]
        case \Game.cover?.url:
            return [CodingKeys.cover, Game.Cover.CodingKeys.url]
        case \Game.cover?.height:
            return [CodingKeys.cover, Game.Cover.CodingKeys.height]
        case \Game.cover?.width:
            return [CodingKeys.cover, Game.Cover.CodingKeys.width]
        case \Game.cover?.imageId:
            return [CodingKeys.cover, Game.Cover.CodingKeys.imageId]
        case \Game.dlcs: return [CodingKeys.dlcs]
        case \Game.expansions: return [CodingKeys.expansions]
        case \Game.externalGames: return [CodingKeys.externalGames]
        case \Game.firstReleaseDate: return [CodingKeys.firstReleaseDate]
        case \Game.follows: return [CodingKeys.follows]
        case \Game.franchise: return [CodingKeys.franchise]
        case \Game.franchises: return [CodingKeys.franchises]
        case \Game.gameEngines: return [CodingKeys.gameEngines]
        case \Game.gameModes: return [CodingKeys.gameModes]
        case \Game.genres: return [CodingKeys.genres]
        case \Game.hypes: return [CodingKeys.hypes]
        case \Game.involvedCompanies: return [CodingKeys.involvedCompanies]
        case \Game.keywords: return [CodingKeys.keywords]
        case \Game.multiplayerModes: return [CodingKeys.multiplayerModes]
        case \Game.name: return [CodingKeys.name]
        case \Game.parentGame: return [CodingKeys.parentGame]
        case \Game.platforms: return [CodingKeys.platforms]
        case \Game.playerPerspectives: return [CodingKeys.playerPerspectives]
        case \Game.popularity: return [CodingKeys.popularity]
        case \Game.pulseCount: return [CodingKeys.pulseCount]
        case \Game.rating: return [CodingKeys.rating]
        case \Game.ratingCount: return [CodingKeys.ratingCount]
        case \Game.releaseDates: return [CodingKeys.releaseDates]
        case \Game.screenshots: return [CodingKeys.screenshots]
        case \Game.similarGames: return [CodingKeys.similarGames]
        case \Game.slug: return [CodingKeys.slug]
        case \Game.standaloneExpansions: return [CodingKeys.standaloneExpansions]
        case \Game.status: return [CodingKeys.status]
        case \Game.storyline: return [CodingKeys.storyline]
        case \Game.summary: return [CodingKeys.summary]
        case \Game.tags: return [CodingKeys.tags]
        case \Game.themes: return [CodingKeys.themes]
        case \Game.timeToBeat: return [CodingKeys.timeToBeat]
        case \Game.totalRating: return [CodingKeys.totalRating]
        case \Game.totalRatingCount: return [CodingKeys.totalRatingCount]
        case \Game.url: return [CodingKeys.url]
        case \Game.versionParent: return [CodingKeys.versionParent]
        case \Game.versionTitle: return [CodingKeys.versionTitle]
        case \Game.videos: return [CodingKeys.videos]
        case \Game.websites: return [CodingKeys.websites]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
