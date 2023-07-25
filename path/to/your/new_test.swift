```swift
import XCTest

class GPTTestTests: XCTestCase {
    
    func testFun() {
        let gptTest = GPTTest()
        gptTest.fun()
        XCTAssertEqual("gpt tested", parsedOutput)
    }
    
    func testNewFun() {
        let gptTest = GPTTest()
        let result = gptTest.newFun()
        XCTAssertEqual(0, result)
    }
    
    var parsedOutput: String = ""
    override class func setUp() {
        super.setUp()
        let originalPrint = Swift.print
        Swift.print = { items in
            parsedOutput = "\(items)"
        }
    }
    
    override class func tearDown() {
        Swift.print = originalPrint
        super.tearDown()
    }
}
```