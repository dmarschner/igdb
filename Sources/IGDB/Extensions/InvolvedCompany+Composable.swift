import Foundation
import Apicalypse

extension InvolvedCompany: Composable {
    // sourcery:inline:InvolvedCompany.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<InvolvedCompany>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \InvolvedCompany.identifier: return CodingKeys.identifier
        case \InvolvedCompany.createdAt: return CodingKeys.createdAt
        case \InvolvedCompany.updatedAt: return CodingKeys.updatedAt
        case \InvolvedCompany.company: return CodingKeys.company
        case \InvolvedCompany.developer: return CodingKeys.developer
        case \InvolvedCompany.game: return CodingKeys.game
        case \InvolvedCompany.porting: return CodingKeys.porting
        case \InvolvedCompany.publisher: return CodingKeys.publisher
        case \InvolvedCompany.supporting: return CodingKeys.supporting
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
