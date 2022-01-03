//
//  Organization.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

public struct Organization: Equatable, Identifiable {
    public let id: OrganizationID
    public let name: String
    public let avatarUrl: String
    public let description: String?
    
    public init(id: OrganizationID, name: String, avatarUrl: String, description: String?) {
        self.id = id
        self.name = name
        self.avatarUrl = avatarUrl
        self.description = description
    }
    
    public static func == (lhs: Organization, rhs: Organization) -> Bool {
        lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.avatarUrl == rhs.avatarUrl &&
        lhs.description == rhs.description
    }
}
