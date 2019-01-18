import Foundation

extension Game: Codable {
    // sourcery:inline:Game.Codable

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
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

    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    public init(from decoder: Decoder) throws {
        // Find proper container, and decode the identifier right away. This is the only mandatory property.
        let container: KeyedDecodingContainer<Game.CodingKeys>?
        if let singleContainer = try? decoder.singleValueContainer() {
            identifier = try singleContainer.decode(Identifier.self)
            container = nil
        } else {
            let keyedContainer = try decoder.container(keyedBy: CodingKeys.self)
            identifier = try keyedContainer.decode(Identifier.self, forKey: .identifier)
            container = keyedContainer
        }
        // Extended decoding - any other property than identifier is optional
        createdAt = try container?.decodeIfPresent(Date.self, forKey: .createdAt) ?? nil
        updatedAt = try container?.decodeIfPresent(Date.self, forKey: .updatedAt) ?? nil
        ageRatings = try container?.decodeIfPresent([AgeRating].self, forKey: .ageRatings) ?? nil
        aggregatedRating = try container?.decodeIfPresent(Double.self, forKey: .aggregatedRating) ?? nil
        aggregatedRatingCount = try container?.decodeIfPresent(Int.self, forKey: .aggregatedRatingCount) ?? nil
        alternativeNames = try container?.decodeIfPresent([AlternativeName].self, forKey: .alternativeNames) ?? nil
        bundles = try container?.decodeIfPresent([Game.Identifier].self, forKey: .bundles) ?? nil
        category = try container?.decodeIfPresent(Category.self, forKey: .category) ?? nil
        collection = try container?.decodeIfPresent(Collection.self, forKey: .collection) ?? nil
        cover = try container?.decodeIfPresent(Cover.self, forKey: .cover) ?? nil
        dlcs = try container?.decodeIfPresent([Game.Identifier].self, forKey: .dlcs) ?? nil
        expansions = try container?.decodeIfPresent([Game.Identifier].self, forKey: .expansions) ?? nil
        externalGames = try container?.decodeIfPresent([ExternalGame].self, forKey: .externalGames) ?? nil
        firstReleaseDate = try container?.decodeIfPresent(Date.self, forKey: .firstReleaseDate) ?? nil
        follows = try container?.decodeIfPresent(Int.self, forKey: .follows) ?? nil
        franchise = try container?.decodeIfPresent(Franchise.self, forKey: .franchise) ?? nil
        franchises = try container?.decodeIfPresent([Franchise].self, forKey: .franchises) ?? nil
        gameEngines = try container?.decodeIfPresent([GameEngine].self, forKey: .gameEngines) ?? nil
        gameModes = try container?.decodeIfPresent([GameMode].self, forKey: .gameModes) ?? nil
        genres = try container?.decodeIfPresent([Genre].self, forKey: .genres) ?? nil
        hypes = try container?.decodeIfPresent(Int.self, forKey: .hypes) ?? nil
        involvedCompanies = try container?.decodeIfPresent([InvolvedCompany].self, forKey: .involvedCompanies) ?? nil
        keywords = try container?.decodeIfPresent([Keyword].self, forKey: .keywords) ?? nil
        multiplayerModes = try container?.decodeIfPresent([MultiplayerMode].self, forKey: .multiplayerModes) ?? nil
        name = try container?.decodeIfPresent(String.self, forKey: .name) ?? nil
        parentGame = try container?.decodeIfPresent(Game.Identifier.self, forKey: .parentGame) ?? nil
        platforms = try container?.decodeIfPresent([Platform].self, forKey: .platforms) ?? nil
        playerPerspectives = try container?.decodeIfPresent([PlayerPerspective].self, forKey: .playerPerspectives) ?? nil
        popularity = try container?.decodeIfPresent(Double.self, forKey: .popularity) ?? nil
        pulseCount = try container?.decodeIfPresent(Int.self, forKey: .pulseCount) ?? nil
        rating = try container?.decodeIfPresent(Double.self, forKey: .rating) ?? nil
        ratingCount = try container?.decodeIfPresent(Int.self, forKey: .ratingCount) ?? nil
        releaseDates = try container?.decodeIfPresent([ReleaseDate].self, forKey: .releaseDates) ?? nil
        screenshots = try container?.decodeIfPresent([Screenshot].self, forKey: .screenshots) ?? nil
        similarGames = try container?.decodeIfPresent([Game.Identifier].self, forKey: .similarGames) ?? nil
        slug = try container?.decodeIfPresent(String.self, forKey: .slug) ?? nil
        standaloneExpansions = try container?.decodeIfPresent([Game.Identifier].self, forKey: .standaloneExpansions) ?? nil
        status = try container?.decodeIfPresent(Status.self, forKey: .status) ?? nil
        storyline = try container?.decodeIfPresent(String.self, forKey: .storyline) ?? nil
        summary = try container?.decodeIfPresent(String.self, forKey: .summary) ?? nil
        tags = try container?.decodeIfPresent([Tag].self, forKey: .tags) ?? nil
        themes = try container?.decodeIfPresent([Theme].self, forKey: .themes) ?? nil
        timeToBeat = try container?.decodeIfPresent(TimeToBeat.self, forKey: .timeToBeat) ?? nil
        totalRating = try container?.decodeIfPresent(Double.self, forKey: .totalRating) ?? nil
        totalRatingCount = try container?.decodeIfPresent(Int.self, forKey: .totalRatingCount) ?? nil
        url = try container?.decodeIfPresent(String.self, forKey: .url) ?? nil
        versionParent = try container?.decodeIfPresent(Game.Identifier.self, forKey: .versionParent) ?? nil
        versionTitle = try container?.decodeIfPresent(String.self, forKey: .versionTitle) ?? nil
        videos = try container?.decodeIfPresent([Video].self, forKey: .videos) ?? nil
        websites = try container?.decodeIfPresent([Website].self, forKey: .websites) ?? nil
    }

    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    public func encode(to encoder: Encoder) throws {
        guard !isSingleValueContainable() else {
            var container = encoder.singleValueContainer()
            return try container.encode(identifier)
        }
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(identifier, forKey: .identifier)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(ageRatings, forKey: .ageRatings)
        try container.encodeIfPresent(aggregatedRating, forKey: .aggregatedRating)
        try container.encodeIfPresent(aggregatedRatingCount, forKey: .aggregatedRatingCount)
        try container.encodeIfPresent(alternativeNames, forKey: .alternativeNames)
        try container.encodeIfPresent(bundles, forKey: .bundles)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(collection, forKey: .collection)
        try container.encodeIfPresent(cover, forKey: .cover)
        try container.encodeIfPresent(dlcs, forKey: .dlcs)
        try container.encodeIfPresent(expansions, forKey: .expansions)
        try container.encodeIfPresent(externalGames, forKey: .externalGames)
        try container.encodeIfPresent(firstReleaseDate, forKey: .firstReleaseDate)
        try container.encodeIfPresent(follows, forKey: .follows)
        try container.encodeIfPresent(franchise, forKey: .franchise)
        try container.encodeIfPresent(franchises, forKey: .franchises)
        try container.encodeIfPresent(gameEngines, forKey: .gameEngines)
        try container.encodeIfPresent(gameModes, forKey: .gameModes)
        try container.encodeIfPresent(genres, forKey: .genres)
        try container.encodeIfPresent(hypes, forKey: .hypes)
        try container.encodeIfPresent(involvedCompanies, forKey: .involvedCompanies)
        try container.encodeIfPresent(keywords, forKey: .keywords)
        try container.encodeIfPresent(multiplayerModes, forKey: .multiplayerModes)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(parentGame, forKey: .parentGame)
        try container.encodeIfPresent(platforms, forKey: .platforms)
        try container.encodeIfPresent(playerPerspectives, forKey: .playerPerspectives)
        try container.encodeIfPresent(popularity, forKey: .popularity)
        try container.encodeIfPresent(pulseCount, forKey: .pulseCount)
        try container.encodeIfPresent(rating, forKey: .rating)
        try container.encodeIfPresent(ratingCount, forKey: .ratingCount)
        try container.encodeIfPresent(releaseDates, forKey: .releaseDates)
        try container.encodeIfPresent(screenshots, forKey: .screenshots)
        try container.encodeIfPresent(similarGames, forKey: .similarGames)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(standaloneExpansions, forKey: .standaloneExpansions)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(storyline, forKey: .storyline)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(themes, forKey: .themes)
        try container.encodeIfPresent(timeToBeat, forKey: .timeToBeat)
        try container.encodeIfPresent(totalRating, forKey: .totalRating)
        try container.encodeIfPresent(totalRatingCount, forKey: .totalRatingCount)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(versionParent, forKey: .versionParent)
        try container.encodeIfPresent(versionTitle, forKey: .versionTitle)
        try container.encodeIfPresent(videos, forKey: .videos)
        try container.encodeIfPresent(websites, forKey: .websites)
    }

    /// Returns true if all properties but the identifier are `nil`.
    public func isSingleValueContainable() -> Bool {
        return  // true, if all properties are nil
            createdAt == nil &&
            updatedAt == nil &&
            ageRatings == nil &&
            aggregatedRating == nil &&
            aggregatedRatingCount == nil &&
            alternativeNames == nil &&
            bundles == nil &&
            category == nil &&
            collection == nil &&
            cover == nil &&
            dlcs == nil &&
            expansions == nil &&
            externalGames == nil &&
            firstReleaseDate == nil &&
            follows == nil &&
            franchise == nil &&
            franchises == nil &&
            gameEngines == nil &&
            gameModes == nil &&
            genres == nil &&
            hypes == nil &&
            involvedCompanies == nil &&
            keywords == nil &&
            multiplayerModes == nil &&
            name == nil &&
            parentGame == nil &&
            platforms == nil &&
            playerPerspectives == nil &&
            popularity == nil &&
            pulseCount == nil &&
            rating == nil &&
            ratingCount == nil &&
            releaseDates == nil &&
            screenshots == nil &&
            similarGames == nil &&
            slug == nil &&
            standaloneExpansions == nil &&
            status == nil &&
            storyline == nil &&
            summary == nil &&
            tags == nil &&
            themes == nil &&
            timeToBeat == nil &&
            totalRating == nil &&
            totalRatingCount == nil &&
            url == nil &&
            versionParent == nil &&
            versionTitle == nil &&
            videos == nil &&
            websites == nil &&
            true // Have not found a way to trim the last && with sourcery
    }
    // sourcery:end
}
