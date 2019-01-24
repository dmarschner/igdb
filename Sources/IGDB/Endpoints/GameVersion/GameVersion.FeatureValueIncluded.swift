import Foundation

extension  GameVersion {

    /// Game Version Feature Value Included
    public enum FeatureValueIncluded: Int, Codable, CustomStringConvertible {
        case notIncluded
        case included
        case preOrderOnly

        /// A textual representation of this instance.
        public var description: String {
            return String(self.rawValue)
        }
    }
}
