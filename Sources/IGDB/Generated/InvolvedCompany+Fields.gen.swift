// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension InvolvedCompany: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case company
        case developer
        case game
        case porting
        case publisher
        case supporting
    }
}
