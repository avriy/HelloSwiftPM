import XCTest
@testable import HelloSwiftPM

class Queue<T>: QueueProtocol {
    var size = 0
    func enqueue(value: T) {
        size += 1
    }
    
    func dequeue() -> T? {
        size -= 1
        
        return nil
    }
    
}

class QueueTests: XCTestCase {
    
    func testEnqueue() {
        let queue = Queue<Int>()
        XCTAssert(queue.size == 0, "the size should be 0")
        queue.enqueue(value: 10)
        XCTAssert(queue.size == 1, "the size should be 1")
    }
    
    func testDequeue() {
        let queue = Queue<Int>()
        let value = 8
        queue.enqueue(value: value)
        XCTAssert(queue.size == 1, "the size should be 1")
        let valueBack = queue.dequeue()
        XCTAssert(queue.size == 0, "the size should be 0")
        //XCTAssert(value == valueBack, "values should be equal")
    }
    
    static var allTests = [("testEnqueue", testEnqueue), ("testDequeue", testDequeue)]
}

