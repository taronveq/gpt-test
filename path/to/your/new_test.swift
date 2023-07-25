Here is a generated unit test for the code provided:

```swift
import XCTest

class UnitTestsTests: XCTestCase {
    
    func test() {
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

Note that this unit test assumes you are using XCTest framework for testing.