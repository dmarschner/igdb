import Foundation
import Apicalypse

extension GameEngine: Composable {
    // sourcery:inline:GameEngine.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<GameEngine>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \GameEngine.identifier: return CodingKeys.identifier
        case \GameEngine.createdAt: return CodingKeys.createdAt
        case \GameEngine.updatedAt: return CodingKeys.updatedAt
        case \GameEngine.companies: return CodingKeys.companies
        case \GameEngine.description: return CodingKeys.description
        case \GameEngine.logo: return CodingKeys.logo
        case \GameEngine.name: return CodingKeys.name
        case \GameEngine.platforms: return CodingKeys.platforms
        case \GameEngine.slug: return CodingKeys.slug
        case \GameEngine.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
