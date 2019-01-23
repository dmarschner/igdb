import Foundation
import Apicalypse

extension Pulse: Composable {
    // sourcery:inline:Pulse.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: AnyKeyPath) throws -> [CodingKey] {

        // Evaluate the `keyPath`s in `Self`
        switch keyPath {
        case \Pulse.identifier: return [CodingKeys.identifier]
        case \Pulse.createdAt: return [CodingKeys.createdAt]
        case \Pulse.updatedAt: return [CodingKeys.updatedAt]
        case \Pulse.author: return [CodingKeys.author]
        case \Pulse.image: return [CodingKeys.image]
        case \Pulse.publishedAt: return [CodingKeys.publishedAt]
        case \Pulse.pulseSource: return [CodingKeys.pulseSource]
        case \Pulse.summary: return [CodingKeys.summary]
        case \Pulse.tags: return [CodingKeys.tags]
        case \Pulse.title: return [CodingKeys.title]
        case \Pulse.uid: return [CodingKeys.uid]
        case \Pulse.videos: return [CodingKeys.videos]
        case \Pulse.website: return [CodingKeys.website]
        default: break
        }

        // Evaluate the `keyPath`s in `Website`
        if type(of: keyPath).rootType is Website.Type {
            return try Pulse.codingPath(for: \Pulse.website)
                + Website.codingPath(for: keyPath)
        }

        // Evaluate the `keyPath`s in `PulseSource`
        if type(of: keyPath).rootType is PulseSource.Type {
            return try Pulse.codingPath(for: \Pulse.pulseSource)
                + PulseSource.codingPath(for: keyPath)
        }

        // No matching coding key found.
        throw Error.unexpectedKeyPath(keyPath)
    }
    // sourcery:end
}
