import Foundation

extension PlatformVersionCompany: Composable {
    // sourcery:inline:PlatformVersionCompany.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<PlatformVersionCompany>) throws -> [CodingKey] {
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
