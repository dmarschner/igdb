import XCTest
@testable import IGDB

final class IGDBTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(true)

        let accountOwnerPath: PartialKeyPath<Achievement> = \.icon
        let namePath: PartialKeyPath<Achievement.Icon> = \Image.animated

        let test = accountOwnerPath.appending(path: namePath)

//        var query = Query(entity: Game.self)
//        query.search(for: "Zelda")
//        let test: Client? = nil
//        let request = try? test?.send(query: query)
    }

    static var allTests = [
        ("testExample", testExample)
    ]
}
