//
//  Repo.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/03.
//

public struct Repo: Equatable, Identifiable {
    public let id: RepoID
    public let names: RepoNames
    public let description: String?
    public let owner: RepoOwner
    public let countData: RepoCountData
    
    public init(id: RepoID, names: RepoNames, description: String?, owner: RepoOwner, countData: RepoCountData) {
        self.id = id
        self.names = names
        self.description = description
        self.owner = owner
        self.countData = countData
    }

    public static func == (lhs: Repo, rhs: Repo) -> Bool {
        lhs.id == rhs.id &&
        lhs.names == rhs.names &&
        lhs.description == rhs.description &&
        lhs.owner == rhs.owner &&
        lhs.countData == rhs.countData
    }
}
