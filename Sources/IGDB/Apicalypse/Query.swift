import Foundation

/// An Apicalypse query to append upon requesting an entity
public struct Query<Entity> where Entity: Composable & Filterable {

    private var includes: Entity.Fields.AllCases?

    private var excludes: Entity.Fields.AllCases?

    private var sort: (field: Entity.Fields, order: Order)?

    private var filters: [Entity.Filters]?

    private var limit: Int?

    private var offset: Int?

    // Only changable on Entities that are Searchable
    private var search: String?

    public init(entity: Entity.Type = Entity.self) {
        includes = Entity.Fields.allCases
        // Any other property should initialize to nil
    }
}

// MARK: - String Representable

extension Query: RawRepresentable {

    /// The raw type that can be used to represent all values of the conforming
    /// type.
    ///
    /// Every distinct value of the conforming type has a corresponding unique
    /// value of the `RawValue` type, but there may be values of the `RawValue`
    /// type that don't have a corresponding value of the conforming type.
    public typealias RawValue = String

    /// Creates a new instance with the specified raw value.
    ///
    /// If there is no value of the type that corresponds with the specified raw
    /// value, this initializer returns `nil`. For example:
    ///
    ///     enum PaperSize: String {
    ///         case A4, A5, Letter, Legal
    ///     }
    ///
    ///     print(PaperSize(rawValue: "Legal"))
    ///     // Prints "Optional("PaperSize.Legal")"
    ///
    ///     print(PaperSize(rawValue: "Tabloid"))
    ///     // Prints "nil"
    ///
    /// - Parameter rawValue: The raw value to use for the new instance.
    public init?(rawValue: RawValue) {
        fatalError("Implementation missing")
        return nil
    }

    /// The corresponding value of the raw type.
    ///
    /// A new instance initialized with `rawValue` will be equivalent to this
    /// instance. For example:
    ///
    ///     enum PaperSize: String {
    ///         case A4, A5, Letter, Legal
    ///     }
    ///
    ///     let selectedSize = PaperSize.Letter
    ///     print(selectedSize.rawValue)
    ///     // Prints "Letter"
    ///
    ///     print(selectedSize == PaperSize(rawValue: selectedSize.rawValue)!)
    ///     // Prints "true"
    public var rawValue: RawValue {
        var query: String = ""
        if let includes = self.includes {
            // fields name,genres;
            let values = includes.map({ $0.rawValue }).joined(separator: ",")
            let fields = queryField(for: "fields", value: values)
            query.append(fields)
        }
        if let excludes = self.excludes {
            // exclude screenshots;
            let values = excludes.map({ $0.rawValue }).joined(separator: ",")
            let exclude = queryField(for: "exclude", value: values)
            query.append(exclude)
        }
        if let sort = self.sort {
            // sort release_dates.date desc;
            let value = "\(sort.field.rawValue) \(sort.order.rawValue)"
            let sort = queryField(for: "sort", value: value)
            query.append(sort)
        }
        if let filters = self.filters {//        private var filters: [Entity.Filters]?
            // where rating >= 80 & release_dates.date > 631152000;
            let value = filters.map({ $0.stringValue }).joined(separator: "&")
            let filter = queryField(for: "where", value: value)
            query.append(filter)
        }
        if let limit = self.limit {
            // limit 33;
            let field = queryField(for: "limit", value: String(limit))
            query.append(field)
        }
        if let offset = self.offset {
            // offset 33;
            let field = queryField(for: "offset", value: String(offset))
            query.append(field)
        }
        if let search = self.search {
            // search "zelda";
            let field = queryField(for: "search", value: "\"\(search)\"")
            query.append(field)
        }
        return query
    }

    private func queryField(for key: String, value: String) -> String {
        return "\(key) \(value);"
    }
}

// MARK: - Fields

extension Query {

    /// Example: `.include(fields: [.name, .platform])`
    public mutating func include(fields: Entity.Fields.AllCases) {
        includes = fields
    }

    /// Example: `.exclude(fields: [.releaseDate, .rating])`
    public mutating func exclude(fields: Entity.Fields.AllCases) {
        excludes = fields
    }

    /// Example: `.sort(along: .rating, order: .descending)`
    public mutating func sort(along field: Entity.Fields, order: Order) {
        sort = (field, order)
    }

    /// Example: `.filter(.platform(.equalTo, 48))`
    public mutating func filter(_ include: Entity.Filters) {
        filters = filters ?? []
        filters?.append(include)
    }

    /// Example: `.limit(by: 10)`
    /// Default limit is 10. The maximum limit is 50, for pro it is 500, and the above tiers, the maximum limit is 5000.
    public mutating func limit(by value: Int) {
        limit = value
    }

    /// Example: `.offset(by: 0)`
    public mutating func offset(by value: Int) {
        offset = value
    }
}

extension Query where Entity: Searchable {

    /// Examples:
    ///
    /// - Character `.search(for: "Master Chief")`
    /// - Collection: `.search(for: "Halo")`
    /// - Game: `.search(for: "Combat Evolved")`
    /// - Platform: `.search(for: "Xbox")`
    /// - Theme: `.search(for: "Survival")`
    public mutating func search(for value: String) {
        search = value
    }
}
