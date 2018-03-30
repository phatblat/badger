import XCTest
@testable import badger

final class badgerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(badger().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
