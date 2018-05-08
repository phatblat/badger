@testable import BadgeKit
import Quick
import Nimble
import XCTest

final class BadgerSpec: QuickSpec {
    override func spec() {
        describe("badger") {
            it("has a message") {
                XCTAssertEqual(CommandLineTool().message, "Hello, World!")
            }
        }
    }
}
