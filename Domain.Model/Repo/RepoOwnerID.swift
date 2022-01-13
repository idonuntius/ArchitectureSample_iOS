//
//  RepoOwnerID.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

public struct RepoOwnerID: Equatable, Hashable {
    public let value: Int
    
    public init(value: Int) {
        self.value = value
    }

    public static func == (lhs: RepoOwnerID, rhs: RepoOwnerID) -> Bool {
        lhs.value == rhs.value
    }
}
