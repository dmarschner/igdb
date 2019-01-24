import Foundation
import Apicalypse

extension Character: Composable {
    // sourcery:inline:Character.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Character>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Character.identifier: return CodingKeys.identifier
        case \Character.createdAt: return CodingKeys.createdAt
        case \Character.updatedAt: return CodingKeys.updatedAt
        case \Character.akas: return CodingKeys.akas
        case \Character.countryName: return CodingKeys.countryName
        case \Character.description: return CodingKeys.description
        case \Character.games: return CodingKeys.games
        case \Character.gender: return CodingKeys.gender
        case \Character.mugShot: return CodingKeys.mugShot
        case \Character.name: return CodingKeys.name
        case \Character.people: return CodingKeys.people
        case \Character.slug: return CodingKeys.slug
        case \Character.species: return CodingKeys.species
        case \Character.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
