import Foundation

extension Company: Composable {
    // sourcery:inline:Company.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Company>) throws -> [CodingKey] {
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
        case \Company.logo?.identifier:
            return [CodingKeys.logo, Company.Logo.CodingKeys.identifier]
        case \Company.logo?.isTransparent:
            return [CodingKeys.logo, Company.Logo.CodingKeys.isTransparent]
        case \Company.logo?.animated:
            return [CodingKeys.logo, Company.Logo.CodingKeys.animated]
        case \Company.logo?.url:
            return [CodingKeys.logo, Company.Logo.CodingKeys.url]
        case \Company.logo?.height:
            return [CodingKeys.logo, Company.Logo.CodingKeys.height]
        case \Company.logo?.width:
            return [CodingKeys.logo, Company.Logo.CodingKeys.width]
        case \Company.logo?.imageHash:
            return [CodingKeys.logo, Company.Logo.CodingKeys.imageHash]
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
