import Foundation
import Apicalypse

extension PlatformVersion: Composable {
    // sourcery:inline:PlatformVersion.Composable

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<PlatformVersion>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \PlatformVersion.identifier: return CodingKeys.identifier
        case \PlatformVersion.companies: return CodingKeys.companies
        case \PlatformVersion.connectivity: return CodingKeys.connectivity
        case \PlatformVersion.cpu: return CodingKeys.cpu
        case \PlatformVersion.graphics: return CodingKeys.graphics
        case \PlatformVersion.mainManufacturer: return CodingKeys.mainManufacturer
        case \PlatformVersion.media: return CodingKeys.media
        case \PlatformVersion.memory: return CodingKeys.memory
        case \PlatformVersion.name: return CodingKeys.name
        case \PlatformVersion.operationSystem: return CodingKeys.operationSystem
        case \PlatformVersion.output: return CodingKeys.output
        case \PlatformVersion.platformLogo: return CodingKeys.platformLogo
        case \PlatformVersion.releaseDates: return CodingKeys.releaseDates
        case \PlatformVersion.resolutions: return CodingKeys.resolutions
        case \PlatformVersion.slug: return CodingKeys.slug
        case \PlatformVersion.sound: return CodingKeys.sound
        case \PlatformVersion.storage: return CodingKeys.storage
        case \PlatformVersion.summary: return CodingKeys.summary
        case \PlatformVersion.url: return CodingKeys.url
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
