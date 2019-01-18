import Foundation

extension AgeRating {

    /// The title of an age rating
    public enum Rating: Int, Codable {
        // PEGI
        case three = 1
        case seven
        case twelve
        case sixteen
        case eighteen
        // ESRB
        case ratingPending = 6
        case earlyChildhood
        case everyone
        case everyone10Plus
        case teen
        case mature
        case adultsOnly
    }
}
