import Foundation

public extension Game {

    /// Status of a `Game`, i.e. whether is released, cancelled, early-access, ...
    ///
    /// [/enum-fields/game-status](https://igdb.github.io/api/enum-fields/game-status/)
    ///
    ///     | Value | Status            |
    ///     | ----- | ----------------- |
    ///     | 0     | Released          |
    ///     | 2     | Alpha             |
    ///     | 3     | Beta              |
    ///     | 4     | Early access      |
    ///     | 5     | Offline expansion |
    ///     | 6     | Cancelled         |
    public enum Status: Int, Enumeration {
        case released = 0
        case alpha = 2
        case beta
        case earlyAccess
        case offlineExpansion
        case cancelled
    }
}
