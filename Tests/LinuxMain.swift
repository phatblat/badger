import XCTest

import badgerTests

var tests = [XCTestCaseEntry]()
tests += badgerTests.allTests()
XCTMain(tests)