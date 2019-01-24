import Foundation

extension GameVersion {

    /// Game Version Feature Category
    public enum FeatureCategory: Int, Codable, CustomStringConvertible {
        case boolean
        case description

        /// A textual representation of this instance.
        public var description: String {
            return String(self.rawValue)
        }
    }
}
