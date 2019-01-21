import Foundation

extension Pulse: Composable {
    // sourcery:inline:Pulse.Composable

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Pulse>) throws -> [CodingKey] {
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
        case \Pulse.website?.identifier:
            return [CodingKeys.website, Pulse.Website.CodingKeys.identifier]
        case \Pulse.website?.trusted:
            return [CodingKeys.website, Pulse.Website.CodingKeys.trusted]
        case \Pulse.website?.category:
            return [CodingKeys.website, Pulse.Website.CodingKeys.category]
        case \Pulse.website?.url:
            return [CodingKeys.website, Pulse.Website.CodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
    // sourcery:end
}
