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
    private var filters: [Filter<Entity>]?

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
        includes = []
    }
}

// MARK: - Fields

extension Query {

    /// Example: `.include(fields: [\.name, \.platform])`
    @discardableResult public func include(fields: [AnyKeyPath]) throws -> Query {
        try includes = fields.map(Entity.rawCodingPath(for:))
        return self
    }

    /// Wildcard. Includes all fields of the Query Entity
    @discardableResult public func includeAll() -> Query {
        includes = ["*"] // Wildcard
        return self
    }

    /// Example: `.exclude(fields: [\.releaseDate, \.rating])`
    @discardableResult public func exclude(fields: [AnyKeyPath]) throws -> Query {
        try excludes = fields.map(Entity.rawCodingPath(for:))
        return self
    }

    /// Example: `.sort(by: \.rating, order: .descending)`
    /// Defaults to `.descending`.
    @discardableResult public func sort(by field: PartialKeyPath<Entity>, order: Order = .descending) throws -> Query {
        try sort = (Entity.rawCodingPath(for: field), order)
        return self
    }

    /// Example: `.where(\.platform == 48))`, `.where(\.identifier != [3, 6, 19])`
    @discardableResult public func `where`(_ filter: Filter<Entity>) -> Query {
        filters = filters ?? []
        filters?.append(filter)
        return self
    }

    /// Default limit is 10. The maximum limit is 50, for pro it is 500, and the above tiers, the maximum limit is 5000.
    ///
    /// Example: `.limit(by: 10)`
    @discardableResult public func limit(by value: Int) -> Query {
        limit = value
        return self
    }

    /// Example: `.offset(by: 0)`
    @discardableResult public func offset(by value: Int) -> Query {
        offset = value
        return self
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
    @discardableResult public func search(for value: String) -> Query {
        search = value
        return self
    }
}

// MARK: - Build

extension Query {

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
            let stringFilters = filters.map { (filter) -> String in
                let property = rawCodingPath(for: filter.codingPath)
                return "\(property) \(filter.operation) \(filter.value)"
            }
            let value = stringFilters.joined(separator: "&")
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

    /// Returns the raw coding path to given `codingPath`. For example: "game", "game.title", ...
    ///
    /// - Parameter codingPath: The `codingPath` to look up
    /// - Returns: The raw coding key path it takes to get to given `codingPath`
    private func rawCodingPath(for codingPath: [CodingKey]) -> String {
        return codingPath.map({ $0.stringValue }).joined(separator: ".")
    }

    private func query(for key: String, of value: String) -> String {
        return "\(key) \(value);"
    }
}
