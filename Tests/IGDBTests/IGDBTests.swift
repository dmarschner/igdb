import XCTest
@testable import IGDB

final class IGDBTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(true)

        _ = try? Query<Game>()
            .include(fields: [\Game.category, \Game.Cover.imageId])
            .where(\.category == .mainGame)
    }

    static var allTests = [
        ("testExample", testExample)
    ]
}
