import Foundation

extension GameEngine: Composable {
    // sourcery:inline:GameEngine.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Each single `keyPath` in `Self`
        switch keyPath {
        case \GameEngine.identifier: return [CodingKeys.identifier]
        case \GameEngine.createdAt: return [CodingKeys.createdAt]
        case \GameEngine.updatedAt: return [CodingKeys.updatedAt]
        case \GameEngine.companies: return [CodingKeys.companies]
        case \GameEngine.description: return [CodingKeys.description]
        case \GameEngine.logo: return [CodingKeys.logo]
        case \GameEngine.name: return [CodingKeys.name]
        case \GameEngine.platforms: return [CodingKeys.platforms]
        case \GameEngine.slug: return [CodingKeys.slug]
        case \GameEngine.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
