import Foundation

/// A type that can be used as a key for encoding and decoding.
public enum WebsiteCodingKeys: String, CodingKey {
    case identifier = "id"
    case trusted, category, url
}

/// Category of a `Website`, i.e. whether it points to the official
/// website, reddit page, twitch directory, facebook page,  ....
public enum WebsiteCategory: Int, Codable {
    case official = 1, wikia, wikipedia, facebook, twitter, twitch
    case instagram = 8, youtube, iphone, ipad, android, steam, reddit
    case discord, googlePlus, tumblr, linkedin, pinterest, soundcloud
}

/// A generic website, as used for `Company` and `Game`
public protocol Website: Identifiable, Composable, Codable {

    /// Uses predefined type for coding
    associatedtype CodingKeys = WebsiteCodingKeys

    /// The unique resource identifier to this specific entry
    var identifier: UInt64 { get }

    /// Whether is a trusted site, or not
    var trusted: Bool? { get }

    /// The service this website links to
    var category: WebsiteCategory? { get }

    /// The website address (URL) of the item
    var url: String? { get }
}

public extension Website {

    /// Returns the path of coding keys it takes to get to given `keyPath`
    ///
    /// - Parameter keyPath: The `keyPath` to look up
    /// - Returns: The coding keys, or path, it takes to get to given `keyPath`
    public static func codingPath(for keyPath: PartialKeyPath<Self>) throws -> [CodingKey] {
        switch keyPath {
        case \Self.identifier: return [WebsiteCodingKeys.identifier]
        case \Self.trusted: return [WebsiteCodingKeys.trusted]
        case \Self.category: return [WebsiteCodingKeys.category]
        case \Self.url: return [WebsiteCodingKeys.url]
        default: throw Error.unexpectedKeyPath(keyPath)
        }
    }
}
