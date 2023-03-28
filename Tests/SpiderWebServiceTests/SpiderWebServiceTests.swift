import XCTest
@testable import SpiderWebService

final class SpiderWebServiceTests: XCTestCase {
    func testRequest() {
        
        Task {
            await MockRequest().send()
        }
    }
}

struct MockDecodable: Decodable {
    let name: String
}

struct MockRequest: Request {
    typealias RemoteModel = MockDecodable
    var url: URL? { "https://www.google.com" }
    var method: HTTPMethod { .get }
}
