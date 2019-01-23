import Foundation
import Apicalypse

extension Game: Composable {
    // sourcery:inline:Game.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
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
        default: break
        }

        // Evaluate the `keyPath`s in `AgeRating`
        if type(of: keyPath).rootType is AgeRating.Type {
            return try Game.codingPath(for: \Game.ageRatings)
                + AgeRating.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `AlternativeName`
        if type(of: keyPath).rootType is AlternativeName.Type {
            return try Game.codingPath(for: \Game.alternativeNames)
                + AlternativeName.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Collection`
        if type(of: keyPath).rootType is Collection.Type {
            return try Game.codingPath(for: \Game.collection)
                + Collection.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `ExternalGame`
        if type(of: keyPath).rootType is ExternalGame.Type {
            return try Game.codingPath(for: \Game.externalGames)
                + ExternalGame.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Franchise`
        if type(of: keyPath).rootType is Franchise.Type {
            return try Game.codingPath(for: \Game.franchise)
                + Franchise.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Franchise`
        if type(of: keyPath).rootType is Franchise.Type {
            return try Game.codingPath(for: \Game.franchises)
                + Franchise.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Cover`
        if type(of: keyPath).rootType is Cover.Type {
            return try Game.codingPath(for: \Game.cover)
                + Cover.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Screenshot`
        if type(of: keyPath).rootType is Screenshot.Type {
            return try Game.codingPath(for: \Game.screenshots)
                + Screenshot.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Website`
        if type(of: keyPath).rootType is Website.Type {
            return try Game.codingPath(for: \Game.websites)
                + Website.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `GameEngine`
        if type(of: keyPath).rootType is GameEngine.Type {
            return try Game.codingPath(for: \Game.gameEngines)
                + GameEngine.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `GameMode`
        if type(of: keyPath).rootType is GameMode.Type {
            return try Game.codingPath(for: \Game.gameModes)
                + GameMode.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Genre`
        if type(of: keyPath).rootType is Genre.Type {
            return try Game.codingPath(for: \Game.genres)
                + Genre.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `InvolvedCompany`
        if type(of: keyPath).rootType is InvolvedCompany.Type {
            return try Game.codingPath(for: \Game.involvedCompanies)
                + InvolvedCompany.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Keyword`
        if type(of: keyPath).rootType is Keyword.Type {
            return try Game.codingPath(for: \Game.keywords)
                + Keyword.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `MultiplayerMode`
        if type(of: keyPath).rootType is MultiplayerMode.Type {
            return try Game.codingPath(for: \Game.multiplayerModes)
                + MultiplayerMode.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Platform`
        if type(of: keyPath).rootType is Platform.Type {
            return try Game.codingPath(for: \Game.platforms)
                + Platform.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `PlayerPerspective`
        if type(of: keyPath).rootType is PlayerPerspective.Type {
            return try Game.codingPath(for: \Game.playerPerspectives)
                + PlayerPerspective.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `ReleaseDate`
        if type(of: keyPath).rootType is ReleaseDate.Type {
            return try Game.codingPath(for: \Game.releaseDates)
                + ReleaseDate.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Theme`
        if type(of: keyPath).rootType is Theme.Type {
            return try Game.codingPath(for: \Game.themes)
                + Theme.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `TimeToBeat`
        if type(of: keyPath).rootType is TimeToBeat.Type {
            return try Game.codingPath(for: \Game.timeToBeat)
                + TimeToBeat.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Video`
        if type(of: keyPath).rootType is Video.Type {
            return try Game.codingPath(for: \Game.videos)
                + Video.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
