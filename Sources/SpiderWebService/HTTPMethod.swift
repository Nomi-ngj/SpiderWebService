//
//  HTTPMethod.swift
//  
//
//  Created by Nouman Gul Junejo on 28/03/2023.
//

import Foundation

public enum HTTPMethod: String {
    case get
    case post
    case put
    case delete
    case head
    case patch
    case options
    case connect
    case trace

    var verb: String { rawValue.uppercased() }
}
