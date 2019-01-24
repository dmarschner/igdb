import Foundation
import Apicalypse

extension Platform: Composable {
    // sourcery:inline:Platform.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Platform>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Platform.identifier: return CodingKeys.identifier
        case \Platform.createdAt: return CodingKeys.createdAt
        case \Platform.updatedAt: return CodingKeys.updatedAt
        case \Platform.abbreviation: return CodingKeys.abbreviation
        case \Platform.alternativeName: return CodingKeys.alternativeName
        case \Platform.category: return CodingKeys.category
        case \Platform.generation: return CodingKeys.generation
        case \Platform.name: return CodingKeys.name
        case \Platform.platformLogo: return CodingKeys.platformLogo
        case \Platform.productFamily: return CodingKeys.productFamily
        case \Platform.slug: return CodingKeys.slug
        case \Platform.summary: return CodingKeys.summary
        case \Platform.url: return CodingKeys.url
        case \Platform.versions: return CodingKeys.versions
        case \Platform.websites: return CodingKeys.websites
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
