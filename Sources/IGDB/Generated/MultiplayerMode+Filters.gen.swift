// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension MultiplayerMode: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case campaigncoop(Postfix, Bool?)
        case dropin(Postfix, Bool?)
        case lancoop(Postfix, Bool?)
        case offlinecoop(Postfix, Bool?)
        case offlinecoopmax(Postfix, Int?)
        case offlinemax(Postfix, Int?)
        case onlinecoop(Postfix, Bool?)
        case onlinecoopmax(Postfix, Int?)
        case onlinemax(Postfix, Int?)
        case platform(Postfix, Platform.Identifier?)
        case splitscreen(Postfix, Bool?)
        case splitscreenonline(Postfix, Bool?)

        public var stringValue: String {
            switch self {
            case .campaigncoop:
                return "campaigncoop"
            case .dropin:
                return "dropin"
            case .lancoop:
                return "lancoop"
            case .offlinecoop:
                return "offlinecoop"
            case .offlinecoopmax:
                return "offlinecoopmax"
            case .offlinemax:
                return "offlinemax"
            case .onlinecoop:
                return "onlinecoop"
            case .onlinecoopmax:
                return "onlinecoopmax"
            case .onlinemax:
                return "onlinemax"
            case .platform:
                return "platform"
            case .splitscreen:
                return "splitscreen"
            case .splitscreenonline:
                return "splitscreenonline"
            }
        }
    }
}
