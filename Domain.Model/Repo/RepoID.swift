//
//  RepoID.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/03.
//

public struct RepoID: Equatable, Hashable {
    public let value: Int
    
    public init(value: Int) {
        self.value = value
    }
    
    
    public static func == (lhs: RepoID, rhs: RepoID) -> Bool {
        lhs.value == rhs.value
    }
}
