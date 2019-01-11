import Foundation

extension ExternalGame {

    /// The external service identifier
    public enum Category: Int, Codable {
        case steam = 1
        case gog = 5
        case youtube = 10
        case microsoft = 11
        case apple = 13
        case twitch = 14
        case android = 15
    }
}
