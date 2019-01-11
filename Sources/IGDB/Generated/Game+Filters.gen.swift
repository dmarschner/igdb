// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Game: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case createdAt(Postfix, Date?)
        case updatedAt(Postfix, Date?)
        case ageRatings(Postfix, Expander<[AgeRating]>?)
        case aggregatedRating(Postfix, Double?)
        case aggregatedRatingCount(Postfix, Int?)
        case alternativeNames(Postfix, Expander<[AlternativeName]>?)
        case bundles(Postfix, [Game.Identifier]?)
        case category(Postfix, Category?)
        case collection(Postfix, Expander<Collection>?)
        case cover(Postfix, Expander<Cover>?)
        case dlcs(Postfix, [Game.Identifier]?)
        case expansions(Postfix, [Game.Identifier]?)
        case externalGames(Postfix, Expander<[ExternalGame]>?)
        case firstReleaseDate(Postfix, Date?)
        case follows(Postfix, Int?)
        case franchise(Postfix, Expander<Franchise>?)
        case franchises(Postfix, Expander<[Franchise]>?)
        case gameEngines(Postfix, Expander<[GameEngine]>?)
        case gameModes(Postfix, Expander<[GameMode]>?)
        case genres(Postfix, Expander<[Genre]>?)
        case hypes(Postfix, Int?)
        case involvedCompanies(Postfix, Expander<[InvolvedCompany]>?)
        case keywords(Postfix, Expander<[Keyword]>?)
        case multiplayerModes(Postfix, Expander<[MultiplayerMode]>?)
        case name(Postfix, String?)
        case parentGame(Postfix, Game.Identifier?)
        case platforms(Postfix, Expander<[Platform]>?)
        case playerPerspectives(Postfix, Expander<[PlayerPerspective]>?)
        case popularity(Postfix, Double?)
        case pulseCount(Postfix, Int?)
        case rating(Postfix, Double?)
        case ratingCount(Postfix, Int?)
        case releaseDates(Postfix, Expander<[ReleaseDate]>?)
        case screenshots(Postfix, Expander<[Screenshot]>?)
        case similarGames(Postfix, [Game.Identifier]?)
        case slug(Postfix, String?)
        case standaloneExpansions(Postfix, [Game.Identifier]?)
        case status(Postfix, Status?)
        case storyline(Postfix, String?)
        case summary(Postfix, String?)
        case tags(Postfix, [Tag]?)
        case themes(Postfix, Expander<[Theme]>?)
        case timeToBeat(Postfix, Expander<TimeToBeat>?)
        case totalRating(Postfix, Double?)
        case totalRatingCount(Postfix, Int?)
        case url(Postfix, String?)
        case versionParent(Postfix, Game.Identifier?)
        case versionTitle(Postfix, String?)
        case videos(Postfix, Expander<[Video]>?)
        case websites(Postfix, Expander<[Website]>?)

        public var stringValue: String {
            switch self {
            case .createdAt:
                return "created_at"
            case .updatedAt:
                return "updated_at"
            case .ageRatings:
                return "age_ratings"
            case .aggregatedRating:
                return "aggregated_rating"
            case .aggregatedRatingCount:
                return "aggregated_rating_count"
            case .alternativeNames:
                return "alternative_names"
            case .bundles:
                return "bundles"
            case .category:
                return "category"
            case .collection:
                return "collection"
            case .cover:
                return "cover"
            case .dlcs:
                return "dlcs"
            case .expansions:
                return "expansions"
            case .externalGames:
                return "external_games"
            case .firstReleaseDate:
                return "first_release_date"
            case .follows:
                return "follows"
            case .franchise:
                return "franchise"
            case .franchises:
                return "franchises"
            case .gameEngines:
                return "game_engines"
            case .gameModes:
                return "game_modes"
            case .genres:
                return "genres"
            case .hypes:
                return "hypes"
            case .involvedCompanies:
                return "involved_companies"
            case .keywords:
                return "keywords"
            case .multiplayerModes:
                return "multiplayer_modes"
            case .name:
                return "name"
            case .parentGame:
                return "parent_game"
            case .platforms:
                return "platforms"
            case .playerPerspectives:
                return "player_perspectives"
            case .popularity:
                return "popularity"
            case .pulseCount:
                return "pulse_count"
            case .rating:
                return "rating"
            case .ratingCount:
                return "rating_count"
            case .releaseDates:
                return "release_dates"
            case .screenshots:
                return "screenshots"
            case .similarGames:
                return "similar_games"
            case .slug:
                return "slug"
            case .standaloneExpansions:
                return "standalone_expansions"
            case .status:
                return "status"
            case .storyline:
                return "storyline"
            case .summary:
                return "summary"
            case .tags:
                return "tags"
            case .themes:
                return "themes"
            case .timeToBeat:
                return "time_to_beat"
            case .totalRating:
                return "total_rating"
            case .totalRatingCount:
                return "total_rating_count"
            case .url:
                return "url"
            case .versionParent:
                return "version_parent"
            case .versionTitle:
                return "version_title"
            case .videos:
                return "videos"
            case .websites:
                return "websites"
            }
        }
    }
}
