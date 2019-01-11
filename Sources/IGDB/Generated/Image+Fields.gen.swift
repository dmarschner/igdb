// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Image: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case isTransparent = "alpha_channel"
        case animated
        case url
        case height
        case width
        case imageHash = "image_id"
    }
}
