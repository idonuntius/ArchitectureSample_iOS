//
//  GithubRepositoryImpl.swift
//  Data.Repository
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

import Domain_Model
import Domain_Repository
import Data_Api
import Data_Mapper

struct GithubRepositoryImpl: GithubRepository {
    private let githubApi: GithubApi
    private let organizationMapper: OrganizationsMapper
    
    init(githubApi: GithubApi, organizationMapper: OrganizationsMapper) {
        self.githubApi = githubApi
        self.organizationMapper = organizationMapper
    }
    
    func getOrganizations() async throws -> Organizations {
        let entities = try await githubApi.getOrganizations()
        return organizationMapper.map(entities: entities)
    }
}
