//
//  Organizations.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

public struct Organizations: Equatable {
    public let values: [Organization]
    
    public init (values: [Organization]) {
        self.values = values
    }
    
    public static func == (lhs: Organizations, rhs: Organizations) -> Bool {
        lhs.values == rhs.values
    }
}
