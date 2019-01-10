import Foundation

public extension Website {

    /// Category of a `Website`, i.e. whether it points to the official website, reddit page, twitch directory, ....
    public enum Category: Int, Codable {
        case official = 1
        case wikia
        case wikipedia
        case facebook
        case twitter
        case twitch
        case instagram = 8
        case youtube
        case iphone
        case ipad
        case android
        case steam
        case reddit
        case discord
        case googlePlus
        case tumblr
        case linkedin
        case pinterest
        case soundcloud
    }
}
