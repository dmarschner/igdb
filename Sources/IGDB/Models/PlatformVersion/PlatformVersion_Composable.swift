import Foundation

extension PlatformVersion: Composable {
    // sourcery:inline:PlatformVersion.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \PlatformVersion.identifier: return [CodingKeys.identifier]
        case \PlatformVersion.companies: return [CodingKeys.companies]
        case \PlatformVersion.connectivity: return [CodingKeys.connectivity]
        case \PlatformVersion.cpu: return [CodingKeys.cpu]
        case \PlatformVersion.graphics: return [CodingKeys.graphics]
        case \PlatformVersion.mainManufacturer: return [CodingKeys.mainManufacturer]
        case \PlatformVersion.media: return [CodingKeys.media]
        case \PlatformVersion.memory: return [CodingKeys.memory]
        case \PlatformVersion.name: return [CodingKeys.name]
        case \PlatformVersion.operationSystem: return [CodingKeys.operationSystem]
        case \PlatformVersion.output: return [CodingKeys.output]
        case \PlatformVersion.platformLogo: return [CodingKeys.platformLogo]
        case \PlatformVersion.releaseDates: return [CodingKeys.releaseDates]
        case \PlatformVersion.resolutions: return [CodingKeys.resolutions]
        case \PlatformVersion.slug: return [CodingKeys.slug]
        case \PlatformVersion.sound: return [CodingKeys.sound]
        case \PlatformVersion.storage: return [CodingKeys.storage]
        case \PlatformVersion.summary: return [CodingKeys.summary]
        case \PlatformVersion.url: return [CodingKeys.url]
        default: break
        }

        // Evaluate the `keyPath`s in `Platform.Logo`
        if type(of: keyPath).rootType is Platform.Logo.Type {
            return try PlatformVersion.codingPath(for: \PlatformVersion.platformLogo)
                + Platform.Logo.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `PlatformVersionCompany`
        if type(of: keyPath).rootType is PlatformVersionCompany.Type {
            return try PlatformVersion.codingPath(for: \PlatformVersion.companies)
                + PlatformVersionCompany.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `PlatformVersionCompany`
        if type(of: keyPath).rootType is PlatformVersionCompany.Type {
            return try PlatformVersion.codingPath(for: \PlatformVersion.mainManufacturer)
                + PlatformVersionCompany.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `PlatformVersionReleaseDate`
        if type(of: keyPath).rootType is PlatformVersionReleaseDate.Type {
            return try PlatformVersion.codingPath(for: \PlatformVersion.releaseDates)
                + PlatformVersionReleaseDate.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
