import Foundation

extension Pulse.Website: Composable {
    // sourcery:inline:Pulse.Website.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Pulse.Website>) throws -> [CodingKey] {
        switch keyPath {
        case \Pulse.Website.identifier: return [CodingKeys.identifier]
        case \Pulse.Website.trusted: return [CodingKeys.trusted]
        case \Pulse.Website.category: return [CodingKeys.category]
        case \Pulse.Website.url: return [CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
