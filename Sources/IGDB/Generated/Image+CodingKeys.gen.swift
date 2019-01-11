// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Image {

    /// A type that can be used as a key for encoding and decoding.
    public enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case isTransparent = "alpha_channel"
        case animated
        case url
        case height
        case width
        case imageHash = "image_id"
    }
}
