import Foundation

// TODO: Split Numeric Postfix and String Postfix

/// [Filters](https://api-docs.igdb.com/#filters)
///
/// Filters are used to sift through results to get what you want. You can exclude and include results based on their properties.
/// For example you could remove all Games where the `rating` was below 80 (`where rating >= 80`).
///
/// Filters can be used on any entity that has sub-properties such as Games, Companies, People etc.
public enum Postfix {
    case equal
    case notEqual
    case greaterThan
    case greaterThanOrEqual
    case lessThan
    case lessThanOrEqual

    internal var stringValue: String {
        switch self {
        case .equal: return "="
        case .notEqual: return "!="
        case .greaterThan: return ">"
        case .greaterThanOrEqual: return ">="
        case .lessThan: return "<"
        case .lessThanOrEqual: return "<="
        }
    }
}
