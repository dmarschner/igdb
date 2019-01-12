import Foundation

public struct Query<Entity> where Entity: Composable & Filterable {

    private var includes: Entity.Fields.AllCases?

    private var excludes: Entity.Fields.AllCases?

    private var sort: (field: Entity.Fields, order: Order)?

    private var filters: [Entity.Filters]?

    private var limit: Int?

    private var offset: Int?

    // Only changable on Entities that are Searchable
    private var search: String?

    init() {
        includes = Entity.Fields.allCases
        excludes = nil
        sort = nil
        filters = nil
        limit = nil
        offset = nil
        search = nil
   }
}

extension Query where Entity.Fields.AllCases == Array<Entity.Fields> {

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
    public mutating func limit(by value: Int) {
        limit = value
    }

    /// Example: `.offset(by: 0)`
    public mutating func offset(by value: Int) {
        offset = value
    }
}

// MARK: Search
// Only applicable on Characters - Collections - Games - People - Platforms - Themes

extension Query where Entity == Character {

    /// Example: `.search(for: "Master Chief")`
    public mutating func search(for value: String) {
        search = value
    }
}

extension Query where Entity == Collection {

    /// Example: `.search(for: "Star Wars")`
    public mutating func search(for value: String) {
        search = value
    }
}

extension Query where Entity == Game {

    /// Example: `.search(for: "Halo")`
    public mutating func search(for value: String) {
        search = value
    }
}

// Private Endpoint
//extension Query where Entity == People {
//
//    /// Example: `.search(for: "Jeff Bridges")`
//    public mutating func search(for value: String) {
//        search = value
//    }
//}

extension Query where Entity == Platform {

    /// Example: `.search(for: "Xbox")`
    public mutating func search(for value: String) {
        search = value
    }
}

extension Query where Entity == Theme {

    /// Example: `.search(for: "Survival")`
    public mutating func search(for value: String) {
        search = value
    }
}
