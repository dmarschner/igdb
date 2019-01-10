import Foundation

public extension Platform {

    public enum Category: Int, Codable {
        case console = 1
        case arcade
        case platform
        case operatingSystem
        case portableConsole
        case computer
    }
}
