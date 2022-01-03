//
//  Organization.swift
//  Data.Entity
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

public struct OrganizationEntity: Codable, Equatable {
    public let id: Int
    public let login: String
    public let avatarUrl: String
    public let description: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case login = "login"
        case avatarUrl = "avatar_url"
        case description = "description"
    }
}
