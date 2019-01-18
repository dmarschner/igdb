import Foundation

extension InvolvedCompany: Composable {
    // sourcery:inline:InvolvedCompany.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<InvolvedCompany>) throws -> [CodingKey] {
        switch keyPath {
        case \InvolvedCompany.identifier: return [CodingKeys.identifier]
        case \InvolvedCompany.createdAt: return [CodingKeys.createdAt]
        case \InvolvedCompany.updatedAt: return [CodingKeys.updatedAt]
        case \InvolvedCompany.company: return [CodingKeys.company]
        case \InvolvedCompany.developer: return [CodingKeys.developer]
        case \InvolvedCompany.game: return [CodingKeys.game]
        case \InvolvedCompany.porting: return [CodingKeys.porting]
        case \InvolvedCompany.publisher: return [CodingKeys.publisher]
        case \InvolvedCompany.supporting: return [CodingKeys.supporting]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
