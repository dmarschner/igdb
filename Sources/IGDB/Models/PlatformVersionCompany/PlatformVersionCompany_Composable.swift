import Foundation

extension PlatformVersionCompany: Composable {
    // sourcery:inline:PlatformVersionCompany.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        if type(of: keyPath).rootType is Company.Type {
            return try PlatformVersionCompany.codingPath(for: \PlatformVersionCompany.company)
                + Company.codingPath(for: keyPath)
        }

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \PlatformVersionCompany.identifier: return [CodingKeys.identifier]
        case \PlatformVersionCompany.comment: return [CodingKeys.comment]
        case \PlatformVersionCompany.company: return [CodingKeys.company]
        case \PlatformVersionCompany.developer: return [CodingKeys.developer]
        case \PlatformVersionCompany.manufacturer: return [CodingKeys.manufacturer]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
