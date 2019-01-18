import Foundation

extension AlternativeName: Composable {
    // sourcery:inline:AlternativeName.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<AlternativeName>) throws -> [CodingKey] {
        switch keyPath {
        case \AlternativeName.identifier: return [CodingKeys.identifier]
        case \AlternativeName.comment: return [CodingKeys.comment]
        case \AlternativeName.name: return [CodingKeys.name]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
