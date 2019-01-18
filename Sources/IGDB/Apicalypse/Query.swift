import Foundation

/// An Apicalypse query to append upon requesting an entity
public final class Query<Entity> where Entity: Identifiable & Composable {

    /// The fields to include on the requested entities
    private var includes: [String]

    /// The fields to exclude on the requested entities
    private var excludes: [String]?

    /// The sort parameter to attach to the query
    private var sort: (path: String, order: Order)?

    /// The filter parameters to attach to the query
    private var filters: [String]?

    /// The limit parameter to attach to the query
    private var limit: Int?

    /// The offset parameter to attach to the query
    private var offset: Int?

    /// The search parameter to attach to the query
    private var search: String?

    /// Designated initializer.
    ///
    /// Allows Query to be initialized either using `Query<Entity>()`
    /// or `Query(entity: Entity.self)` - whichever prefered.
    ///
    /// - Parameter entity: The Entity to query for
    public init(entity: Entity.Type = Entity.self) {
        includes = ["*"] // Wildcard
    }
}

// MARK: - Fields

extension Query {

    /// Example: `.include(fields: [\.name, \.platform])`
    public func include(fields: [PartialKeyPath<Entity>]) throws {
        try includes = fields.map(Entity.rawCodingPath(for:))
    }

    /// Example: `.exclude(fields: [\.releaseDate, \.rating])`
    public func exclude(fields: [PartialKeyPath<Entity>]) throws {
        try excludes = fields.map(Entity.rawCodingPath(for:))
    }

    /// Example: `.sort(by: \.rating, order: .descending)`
    /// Defaults to `.descending`.
    public func sort(by field: PartialKeyPath<Entity>, order: Order = .descending) throws {
        try sort = (Entity.rawCodingPath(for: field), order)
    }

    /// Example: `.where(\.platform == 48))`, `.where(\.identifier == [3, 6, 19])`
    public func `where`(_ filter: Filter<Entity>) rethrows {
        try filters?.append(filter())
    }

    /// Default limit is 10. The maximum limit is 50, for pro it is 500, and the above tiers, the maximum limit is 5000.
    ///
    /// Example: `.limit(by: 10)`
    public func limit(by value: Int) {
        limit = value
    }

    /// Example: `.offset(by: 0)`
    public func offset(by value: Int) {
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
    public func search(for value: String) {
        search = value
    }
}

// MARK: - Build

extension Query {

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
    internal func build() -> String {
        var queries: String = ""
        if !includes.isEmpty { // fields name,genres;
            let values = includes.joined(separator: ",")
            let fields = query(for: "fields", of: values)
            queries.append(fields)
        }
        if let excludes = self.excludes { // exclude screenshots;
            let values = excludes.joined(separator: ",")
            let exclude = query(for: "exclude", of: values)
            queries.append(exclude)
        }
        if let sort = self.sort { // sort release_dates.date desc;
            let value = "\(sort.path) \(sort.order.rawValue)"
            let sort = query(for: "sort", of: value)
            queries.append(sort)
        }
        if let filters = self.filters { // where rating >= 80 & release_dates.date > 631152000;
            let value = filters.joined(separator: "&")
            let filter = query(for: "where", of: value)
            queries.append(filter)
        }
        if let limit = self.limit { // limit 33;
            let field = query(for: "limit", of: String(limit))
            queries.append(field)
        }
        if let offset = self.offset { // offset 3;
            let field = query(for: "offset", of: String(offset))
            queries.append(field)
        }
        if let search = self.search { // search "zelda";
            let field = query(for: "search", of: "\"\(search)\"")
            queries.append(field)
        }
        return queries
    }

    private func query(for key: String, of value: String) -> String {
        return "\(key) \(value);"
    }
}
