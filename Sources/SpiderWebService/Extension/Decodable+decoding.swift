//
//  Decodable+decoding.swift
//  
//
//  Created by Nouman Gul Junejo on 28/03/2023.
//

import Foundation

extension Decodable {
    static func decoding(_ data: Data) throws -> Self {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(Self.self, from: data)
    }
}
