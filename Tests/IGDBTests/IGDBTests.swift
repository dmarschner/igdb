import XCTest
@testable import IGDB

final class IGDBTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(true)

        var query = Query(entity: Game.self)
        query.search(for: "Zelda")
        let test: Client!
        let request = try test.request(query: query)
    }

    static var allTests = [
        ("testExample", testExample)
    ]
}
