import Foundation

extension MultiplayerMode: Composable {
    // sourcery:inline:MultiplayerMode.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \MultiplayerMode.identifier: return [CodingKeys.identifier]
        case \MultiplayerMode.campaigncoop: return [CodingKeys.campaigncoop]
        case \MultiplayerMode.dropin: return [CodingKeys.dropin]
        case \MultiplayerMode.lancoop: return [CodingKeys.lancoop]
        case \MultiplayerMode.offlinecoop: return [CodingKeys.offlinecoop]
        case \MultiplayerMode.offlinecoopmax: return [CodingKeys.offlinecoopmax]
        case \MultiplayerMode.offlinemax: return [CodingKeys.offlinemax]
        case \MultiplayerMode.onlinecoop: return [CodingKeys.onlinecoop]
        case \MultiplayerMode.onlinecoopmax: return [CodingKeys.onlinecoopmax]
        case \MultiplayerMode.onlinemax: return [CodingKeys.onlinemax]
        case \MultiplayerMode.platform: return [CodingKeys.platform]
        case \MultiplayerMode.splitscreen: return [CodingKeys.splitscreen]
        case \MultiplayerMode.splitscreenonline: return [CodingKeys.splitscreenonline]
        default: break
        }

        // Evaluate the `keyPath`s in `Platform`
        if type(of: keyPath).rootType is Platform.Type {
            return try MultiplayerMode.codingPath(for: \MultiplayerMode.platform)
                + Platform.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
