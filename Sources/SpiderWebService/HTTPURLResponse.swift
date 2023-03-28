//
//  HTTPURLResponse.swift
//  
//
//  Created by Nouman Gul Junejo on 28/03/2023.
//

import Foundation

public extension HTTPURLResponse {
    var hasSuccessStatusCode: Bool { (200..<300).contains(statusCode) }
}
