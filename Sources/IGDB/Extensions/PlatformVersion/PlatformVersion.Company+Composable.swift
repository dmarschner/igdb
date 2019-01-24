import Foundation
import Apicalypse

extension PlatformVersion.Company: Composable {
    // sourcery:inline:PlatformVersion.Company.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<PlatformVersion.Company>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \PlatformVersion.Company.identifier: return CodingKeys.identifier
        case \PlatformVersion.Company.comment: return CodingKeys.comment
        case \PlatformVersion.Company.company: return CodingKeys.company
        case \PlatformVersion.Company.developer: return CodingKeys.developer
        case \PlatformVersion.Company.manufacturer: return CodingKeys.manufacturer
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
