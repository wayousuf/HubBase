import XCTest
@testable import HubBase

final class HubBaseTests: XCTestCase {
    func testColorRedEqual() {
        let color = HubBase.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }
        
    func testHubColorsAreEqual() {
        let color = HubBase.colorFromHexString("006736")
        XCTAssertEqual(color, HubBase.primaryColor)
    }
    
    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testHubColorsAreEqual", testHubColorsAreEqual)
    ]
}
