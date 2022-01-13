//
//  GetReposUseCase.swift
//  Domain.UseCase
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

import Domain_Model

public protocol GetReposUseCase {
    func call(organizationName: OrgnaizationName) async throws -> Repos
}
