import Foundation
import Apicalypse

extension Company.Logo: Composable {
    // sourcery:inline:Company.Logo.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Company.Logo.identifier: return [CodingKeys.identifier]
        case \Company.Logo.isTransparent: return [CodingKeys.isTransparent]
        case \Company.Logo.animated: return [CodingKeys.animated]
        case \Company.Logo.url: return [CodingKeys.url]
        case \Company.Logo.height: return [CodingKeys.height]
        case \Company.Logo.width: return [CodingKeys.width]
        case \Company.Logo.imageId: return [CodingKeys.imageId]
        default: break
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
