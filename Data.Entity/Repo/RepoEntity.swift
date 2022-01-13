//
//  RepoEntity.swift
//  Data.Entity
//
//  Created by 井戸田捺貴 on 2022/01/03.
//

public struct RepoEntity: Codable, Equatable {
    public let id: Int
    public let name: String
    public let fullName: String
    public let description: String?
    public let owner: RepoOwnerEntity
    public let forksCount: Int
    public let stargazersCount: Int
    public let watchersCount: Int

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case fullName = "full_name"
        case description = "description"
        case owner = "owner"
        case forksCount = "forks_count"
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
    }
}
