Here is the unit test code for the given files:

```swift
import XCTest

class GPTTestTest: XCTestCase {

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

Note: This unit test is for the `GPTTest` class defined in the `new-file.swift` file. It tests the `fun()` and `newFun()` methods of the class. The `parsedOutput` variable is used to capture the printed output for assertion purposes.