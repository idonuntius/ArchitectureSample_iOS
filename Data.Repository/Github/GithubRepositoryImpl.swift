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
    private let reposMapper: ReposMapper
    
    init(githubApi: GithubApi, organizationMapper: OrganizationsMapper, reposMapper: ReposMapper) {
        self.githubApi = githubApi
        self.organizationMapper = organizationMapper
        self.reposMapper = reposMapper
    }
    
    func getOrganizations() async throws -> Organizations {
        let entities = try await githubApi.getOrganizations()
        return organizationMapper.map(entities: entities)
    }
    
    func getRepos(organizationName: OrgnaizationName) async throws -> Repos {
        let entities = try await githubApi.getRepos(org: organizationName.value)
        return reposMapper.map(entities: entities)
    }
}
