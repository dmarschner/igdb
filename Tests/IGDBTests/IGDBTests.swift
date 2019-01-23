import XCTest
@testable import IGDB
@testable import Apicalypse

final class IGDBTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(true) // Best test

        _ = try? Query(entity: Game.self)
            .include(field: \.category)
            .include(subField: \GameEngine.name)
            .include(subFields: [\Game.Cover.imageId, \Game.Cover.isTransparent])
            .where(\.platforms == 3)
    }

    static var allTests = [
        ("testExample", testExample)
    ]
}
