import Foundation

extension PlatformVersionReleaseDate: Composable {
    // sourcery:inline:PlatformVersionReleaseDate.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \PlatformVersionReleaseDate.identifier: return [CodingKeys.identifier]
        case \PlatformVersionReleaseDate.createdAt: return [CodingKeys.createdAt]
        case \PlatformVersionReleaseDate.updatedAt: return [CodingKeys.updatedAt]
        case \PlatformVersionReleaseDate.category: return [CodingKeys.category]
        case \PlatformVersionReleaseDate.date: return [CodingKeys.date]
        case \PlatformVersionReleaseDate.human: return [CodingKeys.human]
        case \PlatformVersionReleaseDate.platformVersion: return [CodingKeys.platformVersion]
        case \PlatformVersionReleaseDate.region: return [CodingKeys.region]
        case \PlatformVersionReleaseDate.month: return [CodingKeys.month]
        case \PlatformVersionReleaseDate.year: return [CodingKeys.year]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
