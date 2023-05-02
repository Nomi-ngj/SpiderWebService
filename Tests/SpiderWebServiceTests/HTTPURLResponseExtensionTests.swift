//
//  HTTPURLResponseExtensionTests.swift
//  
//
//  Created by Nouman Gul Junejo on 02/05/2023.
//

import XCTest

class HTTPURLResponseExtensionTests: XCTestCase {
    func testHasSuccessStatusCode() {
        let successResponse = HTTPURLResponse(url: URL(string: "https://example.com")!,
                                              statusCode: 200,
                                              httpVersion: nil,
                                              headerFields: nil)!
        
        let redirectResponse = HTTPURLResponse(url: URL(string: "https://example.com")!,
                                               statusCode: 301,
                                               httpVersion: nil,
                                               headerFields: nil)!
        
        let clientErrorResponse = HTTPURLResponse(url: URL(string: "https://example.com")!,
                                                    statusCode: 400,
                                                    httpVersion: nil,
                                                    headerFields: nil)!
        
        XCTAssertTrue(successResponse.hasSuccessStatusCode)
        XCTAssertFalse(redirectResponse.hasSuccessStatusCode)
        XCTAssertFalse(clientErrorResponse.hasSuccessStatusCode)
    }
}

