import Foundation
import Apicalypse

extension Pulse: Composable {
    // sourcery:inline:Pulse.Composable
    // swiftlint:disable all

    /// Returns the coding key of given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys of given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Pulse>) throws -> CodingKey {
        switch keyPath { // Evaluate the `keyPath`s in `Self`
        case \Pulse.identifier: return CodingKeys.identifier
        case \Pulse.createdAt: return CodingKeys.createdAt
        case \Pulse.updatedAt: return CodingKeys.updatedAt
        case \Pulse.author: return CodingKeys.author
        case \Pulse.image: return CodingKeys.image
        case \Pulse.publishedAt: return CodingKeys.publishedAt
        case \Pulse.pulseSource: return CodingKeys.pulseSource
        case \Pulse.summary: return CodingKeys.summary
        case \Pulse.tags: return CodingKeys.tags
        case \Pulse.title: return CodingKeys.title
        case \Pulse.uid: return CodingKeys.uid
        case \Pulse.videos: return CodingKeys.videos
        case \Pulse.website: return CodingKeys.website
        // No matching coding key found.
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // swiftlint:enable all
    // sourcery:end
}
