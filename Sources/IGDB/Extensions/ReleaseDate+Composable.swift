import Foundation
import Apicalypse

extension ReleaseDate: Composable {
    // sourcery:inline:ReleaseDate.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<ReleaseDate>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \ReleaseDate.identifier: return CodingKeys.identifier
        case \ReleaseDate.createdAt: return CodingKeys.createdAt
        case \ReleaseDate.updatedAt: return CodingKeys.updatedAt
        case \ReleaseDate.category: return CodingKeys.category
        case \ReleaseDate.date: return CodingKeys.date
        case \ReleaseDate.game: return CodingKeys.game
        case \ReleaseDate.human: return CodingKeys.human
        case \ReleaseDate.platform: return CodingKeys.platform
        case \ReleaseDate.region: return CodingKeys.region
        case \ReleaseDate.month: return CodingKeys.month
        case \ReleaseDate.year: return CodingKeys.year
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
