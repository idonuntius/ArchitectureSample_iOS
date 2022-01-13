//
//  GetReposUseCaseImpl.swift
//  Domain.UseCase
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

import Domain_Model
import Domain_Repository

struct GetReposUseCaseImpl: GetReposUseCase {
    private let githubRepository: GithubRepository
    
    init(githubRepository: GithubRepository) {
        self.githubRepository = githubRepository
    }

    func call(organizationName: OrgnaizationName) async throws -> Repos {
        try await githubRepository.getRepos(organizationName: organizationName)
    }
}
