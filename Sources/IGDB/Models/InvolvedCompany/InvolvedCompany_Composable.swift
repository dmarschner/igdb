import Foundation

extension InvolvedCompany: Composable {
    // sourcery:inline:InvolvedCompany.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
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
        default: break
        }

        // Evaluate the `keyPath`s in `Company`
        if type(of: keyPath).rootType is Company.Type {
            return try InvolvedCompany.codingPath(for: \InvolvedCompany.company)
                + Company.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `Game`
        if type(of: keyPath).rootType is Game.Type {
            return try InvolvedCompany.codingPath(for: \InvolvedCompany.game)
                + Game.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
