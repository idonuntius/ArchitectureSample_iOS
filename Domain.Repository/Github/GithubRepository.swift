//
//  GithubRepository.swift
//  Domain.Repository
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

import Domain_Model

public protocol GithubRepository {
    func getOrganizations() async throws -> Organizations
}
