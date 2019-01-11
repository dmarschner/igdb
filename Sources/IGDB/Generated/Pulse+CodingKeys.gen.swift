// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Pulse {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case author
        case image
        case publishedAt = "published_at"
        case pulseSource = "pulse_source"
        case summary
        case tags
        case title
        case uid
        case videos
        case website
    }
}
