import Foundation
import Apicalypse

extension PlatformVersion.ReleaseDate: Composable {
    // sourcery:inline:PlatformVersion.ReleaseDate.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<PlatformVersion.ReleaseDate>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \PlatformVersion.ReleaseDate.identifier: return CodingKeys.identifier
        case \PlatformVersion.ReleaseDate.createdAt: return CodingKeys.createdAt
        case \PlatformVersion.ReleaseDate.updatedAt: return CodingKeys.updatedAt
        case \PlatformVersion.ReleaseDate.category: return CodingKeys.category
        case \PlatformVersion.ReleaseDate.date: return CodingKeys.date
        case \PlatformVersion.ReleaseDate.human: return CodingKeys.human
        case \PlatformVersion.ReleaseDate.platformVersion: return CodingKeys.platformVersion
        case \PlatformVersion.ReleaseDate.region: return CodingKeys.region
        case \PlatformVersion.ReleaseDate.month: return CodingKeys.month
        case \PlatformVersion.ReleaseDate.year: return CodingKeys.year
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
