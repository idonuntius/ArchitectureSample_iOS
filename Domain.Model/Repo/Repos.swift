//
//  Repos.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

public struct Repos: Equatable {
    public let values: [Repo]
    
    public init (values: [Repo]) {
        self.values = values
    }
    
    public static func == (lhs: Repos, rhs: Repos) -> Bool {
        lhs.values == rhs.values
    }
}
