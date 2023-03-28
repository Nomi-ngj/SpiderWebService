//
//  URLRequest.swift
//  
//
//  Created by Nouman Gul Junejo on 28/03/2023.
//

import Foundation

public extension URLRequest {
    init(
        url: URL?,
        httpMethod: String,
        httpBody: Data? = nil,
        allHTTPHeaderFields: [String: String]? = nil
    ) throws {
        guard let url else { throw NetworkError.invalidURL }
        self.init(url: url)
        self.httpMethod = httpMethod
        self.httpBody = httpBody
        self.allHTTPHeaderFields = allHTTPHeaderFields
    }

    func perform() async throws -> (Data, URLResponse) {
        try await URLSession.shared.data(for: self)
    }

    func getSuccessData() async throws -> Data {
        let (data, response) = try await perform()
        guard try response.toHTTP().hasSuccessStatusCode else { throw NetworkError.httpResponseFailureStatusCode }
            print("💾 [Data]: \(data)")
            print("📥 [Response]: \(response)")
        return data
    }
}

public extension URLResponse {
    func toHTTP() throws -> HTTPURLResponse {
        guard let httpResponse = self as? HTTPURLResponse else { throw NetworkError.invalidHTTPResponse }
        return httpResponse
    }
}
