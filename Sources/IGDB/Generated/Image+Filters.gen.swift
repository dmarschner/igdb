// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Image: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case isTransparent(Postfix, Bool?)
        case animated(Postfix, Bool?)
        case url(Postfix, String?)
        case height(Postfix, Int?)
        case width(Postfix, Int?)
        case imageHash(Postfix, String?)

        public var stringValue: String {
            switch self {
            case .isTransparent:
                return "alpha_channel"
            case .animated:
                return "animated"
            case .url:
                return "url"
            case .height:
                return "height"
            case .width:
                return "width"
            case .imageHash:
                return "image_id"
            }
        }
    }
}
