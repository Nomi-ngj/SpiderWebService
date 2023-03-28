//
//  URL+Expressible.swift
//  
//
//  Created by Nouman Gul Junejo on 28/03/2023.
//

import Foundation

extension URL?: ExpressibleByStringLiteral,
                ExpressibleByUnicodeScalarLiteral,
                ExpressibleByExtendedGraphemeClusterLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self = URL(string: value)
    }
}
