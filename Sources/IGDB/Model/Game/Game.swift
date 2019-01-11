import Foundation

/// [Game](https://api-docs.igdb.com/#game)
///
/// Video Games!
///
/// API path: [/games](https://api-v3.igdb.com/games)
public struct Game: Identifiable, AutoComposable, AutoFilterable, Updatable, Codable {

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The PEGI rating
    public let ageRatings: Expander<[AgeRating]>?

    /// Rating based on external critic scores
    public let aggregatedRating: Double?

    /// Number of external critic scores
    public let aggregatedRatingCount: Int?

    /// Alternative names for this game
    public let alternativeNames: Expander<[AlternativeName]>?

    /// If a bundle, these are the games inside it
    public let bundles: [Game.Identifier]?

    /// The category of this game
    public let category: Category?

    /// The series the game belongs to
    public let collection: Expander<Collection>?

    /// The cover of this game
    public let cover: Expander<Cover>?

    /// DLCs for this game
    public let dlcs: [Game.Identifier]?

    /// Expansions of this game
    public let expansions: [Game.Identifier]?

    /// External IDs this game has on other services
    public let externalGames: Expander<[ExternalGame]>?

    /// The first release date for this game
    public let firstReleaseDate: Date?

    /// Number of people following a game
    public let follows: Int?

    /// The main franchise
    public let franchise: Expander<Franchise>?

    /// Other franchises the game belongs to
    public let franchises: Expander<[Franchise]>?

    /// The game engine used in this game
    public let gameEngines: Expander<[GameEngine]>?

    /// Modes of gameplay
    public let gameModes: Expander<[GameMode]>?

    /// Genres of the game
    public let genres: Expander<[Genre]>?

    /// Number of follows a game gets before release
    public let hypes: Int?

    /// Companies who developed this game
    public let involvedCompanies: Expander<[InvolvedCompany]>?

    /// Associated keywords
    public let keywords: Expander<[Keyword]>?

    /// Multiplayer modes for this game
    public let multiplayerModes: Expander<[MultiplayerMode]>?

    /// <# Description #>
    public let name: String?

    /// If a DLC, expansion or part of a bundle, this is the main game or bundle
    public let parentGame: Game.Identifier?

    /// Platforms this game was released on
    public let platforms: Expander<[Platform]>?

    /// The main perspective of the player
    public let playerPerspectives: Expander<[PlayerPerspective]>?

    /// The popularity score of the game
    public let popularity: Double?

    /// Number of pulse articles for this game
    public let pulseCount: Int?

    /// Average IGDB user rating
    public let rating: Double?

    /// Total number of IGDB user ratings
    public let ratingCount: Int?

    /// Release dates of this game
    public let releaseDates: Expander<[ReleaseDate]>?

    /// Screenshots of this game
    public let screenshots: Expander<[Screenshot]>?

    /// Similar games
    public let similarGames: [Game.Identifier]?

    /// A url-safe, unique, lower-case version of the name
    public let slug: String?

    /// Standalone expansions of this game
    public let standaloneExpansions: [Game.Identifier]?

    /// The status of the games release
    public let status: Status?

    /// A short description of a games story
    public let storyline: String?

    /// A description of the game
    public let summary: String?

    /// Related entities in the IGDB API
    public let tags: [Tag]?

    /// Themes of the game
    public let themes: Expander<[Theme]>?

    /// How long the game takes to be completed
    public let timeToBeat: Expander<TimeToBeat>?

    /// Average rating based on both IGDB user and external critic scores
    public let totalRating: Double?

    /// Total number of user and external critic scores
    public let totalRatingCount: Int?

    /// The website address (URL) of the item
    public let url: String?

    /// If a version, this is the main game
    public let versionParent: Game.Identifier?

    /// Title of this version (i.e Gold edition)
    public let versionTitle: String?

    /// Videos of this game
    public let videos: Expander<[Video]>?

    /// <# Description #>
    public let websites: Expander<[Website]>?
}
