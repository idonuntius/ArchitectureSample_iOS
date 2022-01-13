//
//  RepoNames.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/03.
//

public struct RepoNames: Equatable {
    public let name: String
    public let fullName: String
    
    public init(name: String, fullName: String) {
        self.name = name
        self.fullName = fullName
    }
    
    public static func == (lhs: RepoNames, rhs: RepoNames) -> Bool {
        lhs.name == rhs.name &&
        lhs.fullName == rhs.fullName
    }
}
