import XCTest
@testable import SpiderWebService

final class SpiderWebServiceTests: XCTestCase {
    func testRequest() {
        
        Task {
            await MockRequest().send()
        }
    }
}
