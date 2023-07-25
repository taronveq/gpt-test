```swift
// UnitTest.swift
import XCTest

class UnitTestTests: XCTestCase {
    
    func testUnitTest() {
        let unitTests = UnitTests()
        unitTests.test()
        XCTAssertEqual("new tested", parsedOutput)
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

```swift
// new-file.swift
import XCTest

class GPTTestTests: XCTestCase {
    
    func testGPTTest() {
        let gptTest = GPTTest()
        gptTest.fun()
        XCTAssertEqual("gpt tested", parsedOutput)
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