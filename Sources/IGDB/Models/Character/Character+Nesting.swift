import Foundation

extension Character {

    /// [Character Mug Shot](https://api-docs.igdb.com/#character-mug-shot)
    ///
    /// Images depicting game characters
    ///
    /// Request Path: https://api-v3.igdb.com/character_mug_shots
    public typealias MugShot = Image

    /// The gender of an actor, character, ...
    public enum Gender: Int, Codable {
        case male = 1
        case female
        case unknown
    }

    /// The species of a game character, actor (LUL), ...
    public enum Species: Int, Codable {
        case human = 1
        case alien
        case animal
        case android
        case unknown
    }
}
