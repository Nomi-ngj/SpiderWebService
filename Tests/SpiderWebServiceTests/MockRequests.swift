//
//  MockRequests.swift
//  
//
//  Created by Nouman Gul Junejo on 02/05/2023.
//

import Foundation
@testable import SpiderWebService

struct MockRequest: Request {
    typealias RemoteModel = UserModel
    var url: URL? { "https://jsonplaceholder.typicode.com/users" }
    var method: HTTPMethod { .get }
}

// MARK: - UserModel
struct UserModel: Codable {
    let id: Int
    let name, username, email: String
}
