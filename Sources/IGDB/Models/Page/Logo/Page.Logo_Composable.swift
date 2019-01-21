import Foundation

extension Page.Logo: Composable {
    // sourcery:inline:Page.Logo.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Page.Logo.identifier: return [CodingKeys.identifier]
        case \Page.Logo.isTransparent: return [CodingKeys.isTransparent]
        case \Page.Logo.animated: return [CodingKeys.animated]
        case \Page.Logo.url: return [CodingKeys.url]
        case \Page.Logo.height: return [CodingKeys.height]
        case \Page.Logo.width: return [CodingKeys.width]
        case \Page.Logo.imageId: return [CodingKeys.imageId]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
