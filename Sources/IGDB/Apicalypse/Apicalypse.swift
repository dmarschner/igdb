import Foundation

public struct Apicalypse<Entity> where Entity: Composable {

    private let fields: [Entity.Fields] // .fields(fields: "*")

    private let excludes: [Entity.Fields] // .exclude(fields: "*")

    // TODO: Accessable Only on Entities that are Searchable
    private let search: String // .search(searchQuery: "Halo")

    private let sort: (field: Entity.Fields, order: Order) // .sort(field: "release_dates", order: .ASCENDING)

    //    private let filter: [Entity.Filter] // .where(query: "platforms = 48")

    private let limit: Int //        .limit(value: 10)

    private let offset: Int //        .offset(value: 0)
}
