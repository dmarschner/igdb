// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Video: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case name(Postfix, String?)
        case videoId(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .name:
                return "name"
            case .videoId:
                return "video_id"
            }
        }
    }
}
