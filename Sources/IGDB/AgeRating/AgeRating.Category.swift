import Foundation

extension AgeRating {

    /// The organization that has issued a specific rating
    public enum Category: Int, Codable {
        case pegi = 1
        case esrb
    }
}
