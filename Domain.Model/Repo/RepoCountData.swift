//
//  RepoCountData.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

public struct RepoCountData: Equatable {
    public let forksCount: Int
    public let stargazersCount: Int
    public let watchersCount: Int
    
    public init(forksCount: Int, stargazersCount: Int, watchersCount: Int) {
        self.forksCount = forksCount
        self.stargazersCount = stargazersCount
        self.watchersCount = watchersCount
    }

    public static func == (lhs: RepoCountData, rhs: RepoCountData) -> Bool {
        lhs.forksCount == rhs.forksCount &&
        lhs.stargazersCount == rhs.stargazersCount &&
        lhs.watchersCount == rhs.watchersCount
    }
}
