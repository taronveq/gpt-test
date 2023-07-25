// UnitTest.swift
class UnitTests {
  public func test() {
    print("new tested")
  }
}

// new-file.swift
class GPTTest {
  private func fun() {
    print("gpt tested")
  }

  private func newFun() -> Int {
    0
  }
}

// path/to/your/new_test.swift
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