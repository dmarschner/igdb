import Foundation

extension Character {

    /// The species of a game character, actor (LUL), ...
    public enum Species: Int, Codable {
        case human = 1
        case alien
        case animal
        case android
        case unknown
    }
}
