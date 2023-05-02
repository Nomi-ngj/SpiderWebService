//
//  URLResponseExtensionTests.swift
//  
//
//  Created by Nouman Gul Junejo on 02/05/2023.
//

import XCTest

class URLResponseExtensionTests: XCTestCase {
    func testToHTTP() throws {
        let urlResponse = HTTPURLResponse(url: URL(string: "https://example.com")!,
                                          statusCode: 200,
                                          httpVersion: nil,
                                          headerFields: nil)!
        
        let httpURLResponse = try urlResponse.toHTTP()
        
        XCTAssertEqual(httpURLResponse.statusCode, 200)
        XCTAssertEqual(httpURLResponse.url, URL(string: "https://example.com"))
    }
}
