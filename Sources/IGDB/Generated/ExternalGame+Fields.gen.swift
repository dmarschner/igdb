// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension ExternalGame: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category
        case game
        case name
        case uid
        case url
        case year = "y"
    }
}
