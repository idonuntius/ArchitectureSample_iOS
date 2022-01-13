//
//  RepoOwner.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

public struct RepoOwner: Equatable, Identifiable {
    public let id: RepoOwnerID
    public let name: String
    public let avatarURL: String
    
    public init(id: RepoOwnerID, name: String, avatarURL: String) {
        self.id = id
        self.name = name
        self.avatarURL = avatarURL
    }

    public static func == (lhs: RepoOwner, rhs: RepoOwner) -> Bool {
        lhs.id == rhs.id && lhs.name == rhs.name && lhs.avatarURL == rhs.avatarURL
    }
}
