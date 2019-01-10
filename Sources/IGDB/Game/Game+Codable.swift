import Foundation

extension Game {

    // sourcery:inline:Game.CodingKeys
    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey, Field {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case ageRatings = "age_ratings"
        case aggregatedRating = "aggregated_rating"
        case aggregatedRatingCount = "aggregated_rating_count"
        case alternativeNames = "alternative_names"
        case bundles
        case category
        case collection
        case cover
        case dlcs
        case expansions
        case externalGames = "external_games"
        case firstReleaseDate = "first_release_date"
        case follows
        case franchise
        case franchises
        case gameEngines = "game_engines"
        case gameModes = "game_modes"
        case genres
        case hypes
        case involvedCompanies = "involved_companies"
        case keywords
        case multiplayerModes = "multiplayer_modes"
        case name
        case parentGame = "parent_game"
        case platforms
        case playerPerspectives = "player_perspectives"
        case popularity
        case pulseCount = "pulse_count"
        case rating
        case ratingCount = "rating_count"
        case releaseDates = "release_dates"
        case screenshots
        case similarGames = "similar_games"
        case slug
        case standaloneExpansions = "standalone_expansions"
        case status
        case storyline
        case summary
        case tags
        case themes
        case timeToBeat = "time_to_beat"
        case totalRating = "total_rating"
        case totalRatingCount = "total_rating_count"
        case url
        case versionParent = "version_parent"
        case versionTitle = "version_title"
        case videos
        case websites
    }
    // sourcery:end
}
