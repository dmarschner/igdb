// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension ReleaseDate {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case date
        case game
        case human
        case platform
        case region
        case month = "m"
        case year = "y"
    }
}
