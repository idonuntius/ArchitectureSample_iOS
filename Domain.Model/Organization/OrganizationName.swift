//
//  OrganizationName.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

public struct OrgnaizationName: Equatable {
    public let value: String
    
    public init(value: String) {
        self.value = value
    }
    
    public static func == (lhs: OrgnaizationName, rhs: OrgnaizationName) -> Bool {
        lhs.value == rhs.value
    }
}
