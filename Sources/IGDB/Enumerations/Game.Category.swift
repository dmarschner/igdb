import Foundation

public extension Game {

    /// Category of a `Game`, i.e. whether is the main game, an expansion, DLC, ...
    ///
    /// [/enum-fields/game-category](https://igdb.github.io/api/enum-fields/game-category/)
    ///
    ///     | Value | Category             |
    ///     | ----- | -------------------- |
    ///     | 0     | Main game            |
    ///     | 1     | DLC / Addon          |
    ///     | 2     | Expansion            |
    ///     | 3     | Bundle               |
    ///     | 4     | Standalone expansion |
    public enum Category: Int, Enumeration {
        case mainGame
        case addon
        case expansion
        case bundle
        case standaloneExpansion
    }
}
