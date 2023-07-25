import XCTest

class UnitTestsTest: XCTestCase {
    
    func testTest() {
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