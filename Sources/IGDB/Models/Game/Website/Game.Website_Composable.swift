import Foundation

extension Game.Website: Composable {
    // sourcery:inline:Game.Website.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Game.Website>) throws -> [CodingKey] {
        switch keyPath {
        case \Game.Website.identifier: return [CodingKeys.identifier]
        case \Game.Website.trusted: return [CodingKeys.trusted]
        case \Game.Website.category: return [CodingKeys.category]
        case \Game.Website.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
