import Foundation

extension Game {

    /// Category of a `Game`, i.e. whether is the main game, an expansion, DLC, ...
    ///
    ///     | Value | Category             |
    ///     | ----- | -------------------- |
    ///     | 0     | Main game            |
    ///     | 1     | DLC / Addon          |
    ///     | 2     | Expansion            |
    ///     | 3     | Bundle               |
    ///     | 4     | Standalone expansion |
    public enum Category: Int, Codable {
        case mainGame
        case addon
        case expansion
        case bundle
        case standaloneExpansion
    }

    /// Status of a `Game`, i.e. whether is released, cancelled, early-access, ...
    ///
    ///     | Value | Status            |
    ///     | ----- | ----------------- |
    ///     | 0     | Released          |
    ///     | 2     | Alpha             |
    ///     | 3     | Beta              |
    ///     | 4     | Early access      |
    ///     | 5     | Offline expansion |
    ///     | 6     | Cancelled         |
    public enum Status: Int, Codable {
        case released = 0
        case alpha = 2
        case beta
        case earlyAccess
        case offlineExpansion
        case cancelled
    }

    /// [Official artworks](https://api-docs.igdb.com/?swift#artwork) (resolution and aspect ratio may vary)
    ///
    /// API path: [/artworks](https://api-v3.igdb.com/artworks)
    public typealias Artwork = Image

    /// [Cover](https://api-docs.igdb.com/#cover)
    ///
    /// API path: [/covers](https://api-v3.igdb.com/covers)
    public typealias Cover = Image

    /// [Screenshot](https://api-docs.igdb.com/#screenshot)
    ///
    /// Screenshots of games
    ///
    /// Request Path: https://api-v3.igdb.com/screenshots
    public typealias Screenshot = Image

    /// [Game Website](https://api-docs.igdb.com/#website)
    ///
    /// A website url, usually associated with a game
    ///
    /// Request Path: https://api-v3.igdb.com/websites
    public typealias Website = IGDB.Website
}
