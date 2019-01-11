// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

extension Apicalypse: Filterable {

    /// A type that can be used for expressing required fields
    public enum Filters: Filter {
        case fields(Postfix, [Entity.Fields])
        case excludes(Postfix, [Entity.Fields])
        case search(Postfix, String)
        case sort(Postfix, (field: Entity.Fields, order: Order))
        case limit(Postfix, Int)
        case offset(Postfix, Int)

        public var stringValue: String {
            switch self {
            case .fields:
                return "fields"
            case .excludes:
                return "excludes"
            case .search:
                return "search"
            case .sort:
                return "sort"
            case .limit:
                return "limit"
            case .offset:
                return "offset"
            }
        }
    }
}
