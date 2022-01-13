//
//  RepoOwnerEntity.swift
//  Data.Entity
//
//  Created by 井戸田捺貴 on 2022/01/03.
//

public struct RepoOwnerEntity: Codable, Equatable {
    public let id: Int
    public let login: String
    public let avatarURL: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case login = "login"
        case avatarURL = "avatar_url"
    }
}
