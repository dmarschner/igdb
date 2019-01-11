import Foundation

/// A generic website, as used for `Company` and `Game`
public class Website: Identifiable, AutoComposable, AutoFilterable, Codable {

    /// Category of a `Website`, i.e. whether it points to the official
    /// website, reddit page, twitch directory, facebook page,  ....
    public enum Category: Int, Codable {
        case official = 1, wikia, wikipedia, facebook, twitter, twitch
        case instagram = 8, youtube, iphone, ipad, android, steam, reddit
        case discord, googlePlus, tumblr, linkedin, pinterest, soundcloud
    }

    /// The unique resource identifier to this specific entry
    public let identifier: UInt64

    /// Whether is a trusted site, or not
    public let trusted: Bool?

    /// The service this website links to
    public let category: Category?

    /// The website address (URL) of the item
    public let url: String?
}
