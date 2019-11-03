import XCTest
@testable import CombineSaga

final class CombineSagaTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CombineSaga().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
