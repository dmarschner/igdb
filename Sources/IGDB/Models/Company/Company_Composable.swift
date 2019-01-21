import Foundation

extension Company: Composable {
    // sourcery:inline:Company.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \Company.identifier: return [CodingKeys.identifier]
        case \Company.createdAt: return [CodingKeys.createdAt]
        case \Company.updatedAt: return [CodingKeys.updatedAt]
        case \Company.startDate: return [CodingKeys.startDate]
        case \Company.changeDate: return [CodingKeys.changeDate]
        case \Company.changedCompanyId: return [CodingKeys.changedCompanyId]
        case \Company.country: return [CodingKeys.country]
        case \Company.description: return [CodingKeys.description]
        case \Company.developed: return [CodingKeys.developed]
        case \Company.logo: return [CodingKeys.logo]
        case \Company.name: return [CodingKeys.name]
        case \Company.parent: return [CodingKeys.parent]
        case \Company.published: return [CodingKeys.published]
        case \Company.slug: return [CodingKeys.slug]
        case \Company.url: return [CodingKeys.url]
        case \Company.websites: return [CodingKeys.websites]
        case \Company.changeDateCategory: return [CodingKeys.changeDateCategory]
        case \Company.startDateCategory: return [CodingKeys.startDateCategory]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
