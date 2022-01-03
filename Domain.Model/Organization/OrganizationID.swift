//
//  OrganizationID.swift
//  Domain.Model
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

public struct OrganizationID: Equatable, Hashable {
    public let value: Int

    public init(value: Int) {
        self.value = value
    }

    public static func == (lhs: OrganizationID, rhs: OrganizationID) -> Bool {
        lhs.value == rhs.value
    }
}
