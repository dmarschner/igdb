import Foundation

extension AgeRating {

    /// The title of an age rating // TODO: PEGI & ESRB merge enum is not that pretty and also redundant considering the category
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
