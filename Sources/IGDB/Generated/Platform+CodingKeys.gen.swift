// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Platform {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case abbreviation
        case alternativeName = "alternative_name"
        case category
        case generation
        case name
        case platformLogo = "platform_logo"
        case productFamily = "product_family"
        case slug
        case summary
        case url
        case versions
        case websites
    }
}
