//
//  GetOrganizationsUseCaseImpl.swift
//  Domain.UseCase
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import Foundation
import Domain_Model
import Domain_Repository

struct GetOrganizationsUseCaseImpl: GetOrganizationsUseCase {
    private let githubRepository: GithubRepository
    
    init(githubRepository: GithubRepository) {
        self.githubRepository = githubRepository
    }
    
    func call() async throws -> Organizations {
        try await githubRepository.getOrganizations()
    }
}
