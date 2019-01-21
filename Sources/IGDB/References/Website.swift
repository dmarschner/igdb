import Foundation

/// Category of a `Website`, i.e. whether it points to the official
/// website, reddit page, twitch directory, facebook page,  ....
public enum WebsiteCategory: Int, Codable {
    case official = 1, wikia, wikipedia, facebook, twitter, twitch
    case instagram = 8, youtube, iphone, ipad, android, steam, reddit
    case discord, googlePlus, tumblr, linkedin, pinterest, soundcloud
}

/// A generic website, as used for `Company` and `Game`
public protocol Website {

    /// The unique resource identifier to this specific entry
    var identifier: UInt64 { get }

    /// Whether is a trusted site, or not
    var trusted: Bool? { get }

    /// The service this website links to
    var category: WebsiteCategory? { get }

    /// The website address (URL) of the item
    var url: String? { get }
}
