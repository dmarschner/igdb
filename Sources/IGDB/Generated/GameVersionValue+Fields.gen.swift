// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension GameVersionValue: Composable {

    /// A type that can be used for expressing required fields
    public enum Fields: String, Field {
        case game
        case gameFeature = "game_feature"
        case includedFeature = "included_feature"
        case note
    }
}
