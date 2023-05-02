//
//  DecodableExtensionTests.swift
//  
//
//  Created by Nouman Gul Junejo on 02/05/2023.
//

import XCTest
@testable import SpiderWebService

class DecodableExtensionTests: XCTestCase {
    let mockJsonData = """
            {
                "name": "Nouman Gul Junejo",
                "username": "nomi-ngj",
                "email": "noumanguljunejo@gmail.com",
                "id": 1,
            }
        """
    
    func testDecoding() throws {
        let jsonData = mockJsonData.data(using: .utf8)!
        
        let decodedObject = try UserModel.decoding(jsonData)
        
        XCTAssertEqual(decodedObject.name, "Nouman Gul Junejo")
        XCTAssertEqual(decodedObject.id, 1)
    }
    
    
    func testRequestDecoding() throws {
        let jsonData = mockJsonData.data(using: .utf8)!
        
        let decodedObject = try MockRequest().decode(jsonData)
        
        XCTAssertEqual(decodedObject.name, "Nouman Gul Junejo")
        XCTAssertEqual(decodedObject.id, 1)
    }
}
