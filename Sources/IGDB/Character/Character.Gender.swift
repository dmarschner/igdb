import Foundation

extension Character {

    /// The gender of an actor, character, ...
    public enum Gender: Int, Codable {
        case male = 1
        case female
        case unknown
    }
}
