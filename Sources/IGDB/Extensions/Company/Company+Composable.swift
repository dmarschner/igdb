import Foundation
import Apicalypse

extension Company: Composable {
    // sourcery:inline:Company.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Company>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Company.identifier: return CodingKeys.identifier
        case \Company.createdAt: return CodingKeys.createdAt
        case \Company.updatedAt: return CodingKeys.updatedAt
        case \Company.startDate: return CodingKeys.startDate
        case \Company.changeDate: return CodingKeys.changeDate
        case \Company.changedCompanyId: return CodingKeys.changedCompanyId
        case \Company.country: return CodingKeys.country
        case \Company.description: return CodingKeys.description
        case \Company.developed: return CodingKeys.developed
        case \Company.logo: return CodingKeys.logo
        case \Company.name: return CodingKeys.name
        case \Company.parent: return CodingKeys.parent
        case \Company.published: return CodingKeys.published
        case \Company.slug: return CodingKeys.slug
        case \Company.url: return CodingKeys.url
        case \Company.websites: return CodingKeys.websites
        case \Company.changeDateCategory: return CodingKeys.changeDateCategory
        case \Company.startDateCategory: return CodingKeys.startDateCategory
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
