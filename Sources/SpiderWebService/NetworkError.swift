//
//  NetworkError.swift
//  
//
//  Created by Nouman Gul Junejo on 28/03/2023.
//

public enum NetworkError: Error {
    case invalidURL
    case invalidHTTPResponse
    case httpResponseFailureStatusCode
}
