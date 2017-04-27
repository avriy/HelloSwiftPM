import XCTest
import Foundation

#if os(Linux)
import Dispatch
#endif

class DataLoadingTests: XCTestCase {
    
    func testLoadingRemoteData() {
        let path = "https://avriy.github.io/scarers"

        let dataCanBeLoaded = expectation(description: "Data can be loaded")
        
        DispatchQueue(label: "io loading").async {
            defer {
                dataCanBeLoaded.fulfill()
            }
            
            guard let url = URL(string: path) else {
                XCTFail("can not form url out of string")
                return
            }
            do {
                let data = try Data(contentsOf: url)
                XCTAssert(data.count != 0, "data should not be empty")
            } catch {
                XCTFail("failed with error \(error)")
            }
        }
        
        wait(for: [dataCanBeLoaded], timeout: 30)
    }
    
}
