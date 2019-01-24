import Foundation
import Apicalypse

extension MultiplayerMode: Composable {
    // sourcery:inline:MultiplayerMode.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<MultiplayerMode>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \MultiplayerMode.identifier: return CodingKeys.identifier
        case \MultiplayerMode.campaigncoop: return CodingKeys.campaigncoop
        case \MultiplayerMode.dropin: return CodingKeys.dropin
        case \MultiplayerMode.lancoop: return CodingKeys.lancoop
        case \MultiplayerMode.offlinecoop: return CodingKeys.offlinecoop
        case \MultiplayerMode.offlinecoopmax: return CodingKeys.offlinecoopmax
        case \MultiplayerMode.offlinemax: return CodingKeys.offlinemax
        case \MultiplayerMode.onlinecoop: return CodingKeys.onlinecoop
        case \MultiplayerMode.onlinecoopmax: return CodingKeys.onlinecoopmax
        case \MultiplayerMode.onlinemax: return CodingKeys.onlinemax
        case \MultiplayerMode.platform: return CodingKeys.platform
        case \MultiplayerMode.splitscreen: return CodingKeys.splitscreen
        case \MultiplayerMode.splitscreenonline: return CodingKeys.splitscreenonline
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
