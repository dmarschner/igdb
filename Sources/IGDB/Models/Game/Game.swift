import Foundation

/// [Game](https://api-docs.igdb.com/#game)
///
/// Video Games!
public struct Game: Identifiable, Updatable, Searchable {

    /// The API endpoint to request these entities from.
    /// Path: [/games](https://api-v3.igdb.com/games)
    public static let requestPath: String = "games"

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Date this was initially added to the IGDB database
    public let createdAt: Date?

    /// The last date this entry was updated in the IGDB database
    public let updatedAt: Date?

    /// The PEGI rating
    public let ageRatings: [AgeRating]?

    /// Rating based on external critic scores
    public let aggregatedRating: Double?

    /// Number of external critic scores
    public let aggregatedRatingCount: Int?

    /// Alternative names for this game
    public let alternativeNames: [AlternativeName]?

    /// If a bundle, these are the games inside it
    public let bundles: [Game.Identifier]?

    /// The category of this game
    public let category: Category?

    /// The series the game belongs to
    public let collection: Collection?

    /// The cover of this game
    public let cover: Cover?

    /// DLCs for this game
    public let dlcs: [Game.Identifier]?

    /// Expansions of this game
    public let expansions: [Game.Identifier]?

    /// External IDs this game has on other services
    public let externalGames: [ExternalGame]?

    /// The first release date for this game
    public let firstReleaseDate: Date?

    /// Number of people following a game
    public let follows: Int?

    /// The main franchise
    public let franchise: Franchise?

    /// Other franchises the game belongs to
    public let franchises: [Franchise]?

    /// The game engine used in this game
    public let gameEngines: [GameEngine]?

    /// Modes of gameplay
    public let gameModes: [GameMode]?

    /// Genres of the game
    public let genres: [Genre]?

    /// Number of follows a game gets before release
    public let hypes: Int?

    /// Companies who developed this game
    public let involvedCompanies: [InvolvedCompany]?

    /// Associated keywords
    public let keywords: [Keyword]?

    /// Multiplayer modes for this game
    public let multiplayerModes: [MultiplayerMode]?

    /// <# Description #>
    public let name: String?

    /// If a DLC, expansion or part of a bundle, this is the main game or bundle
    public let parentGame: Game.Identifier?

    /// Platforms this game was released on
    public let platforms: [Platform]?

    /// The main perspective of the player
    public let playerPerspectives: [PlayerPerspective]?

    /// The popularity score of the game
    public let popularity: Double?

    /// Number of pulse articles for this game
    public let pulseCount: Int?

    /// Average IGDB user rating
    public let rating: Double?

    /// Total number of IGDB user ratings
    public let ratingCount: Int?

    /// Release dates of this game
    public let releaseDates: [ReleaseDate]?

    /// Screenshots of this game
    public let screenshots: [Screenshot]?

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
    public let themes: [Theme]?

    /// How long the game takes to be completed
    public let timeToBeat: TimeToBeat?

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
    public let videos: [Video]?

    /// <# Description #>
    public let websites: [Website]?
}
