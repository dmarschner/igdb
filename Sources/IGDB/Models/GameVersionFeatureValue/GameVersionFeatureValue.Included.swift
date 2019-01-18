import Foundation

extension GameVersionFeatureValue {

    /// Game Version Feature Value Included
    public enum Included: Int, Codable {
        case notIncluded
        case included
        case preOrderOnly
    }
}
