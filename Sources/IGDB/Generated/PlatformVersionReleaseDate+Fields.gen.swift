// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension PlatformVersionReleaseDate: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case date
        case human
        case platformVersion = "platform_version"
        case region
        case month = "m"
        case year = "y"
    }
}