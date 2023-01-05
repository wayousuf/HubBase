import XCTest
@testable import HubBase

final class HubBaseTests: XCTestCase {
    func testColorRedEqual() {
        let color = HubBase.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
    ]
}
