// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Character: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case akas
        case countryName = "country_name"
        case description
        case games
        case gender
        case mugShot = "mug_shot"
        case name
        case people
        case slug
        case species
        case url
    }
}
