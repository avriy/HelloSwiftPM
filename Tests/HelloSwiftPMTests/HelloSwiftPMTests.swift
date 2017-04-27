import XCTest
@testable import HelloSwiftPM

class HelloSwiftPMTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual("Artemiy".hello, "Hello, Artemiy")
    }

    func newTest() {
        
    }
    
    static var allTests = [
        ("testExample", testExample), ("newTest", newTest),
    ]
}
