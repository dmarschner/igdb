// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension GameEngine {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case companies
        case description
        case logo
        case name
        case platforms
        case slug
        case url
    }
}
