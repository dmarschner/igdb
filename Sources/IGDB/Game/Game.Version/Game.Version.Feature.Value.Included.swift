import Foundation

public extension Game.Version.Feature.Value {

    /// Game Version Feature Value Included
    public enum Included: Int, Codable {
        case notIncluded
        case included
        case preOrderOnly
    }
}
