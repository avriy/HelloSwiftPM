import XCTest
@testable import HelloSwiftPM

class HelloSwiftPMTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual("Artemiy".hello, "Hello, Artemiy")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
