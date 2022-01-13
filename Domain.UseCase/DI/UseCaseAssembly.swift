//
//  UseCaseAssembly.swift
//  Domain.UseCase
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import Swinject
import Domain_Repository

public struct UseCaseAssembly: Assembly {
    public init() {
    }
    
    public func assemble(container: Container) {
        container.register(GetOrganizationsUseCase.self) { resolver in
            GetOrganizationsUseCaseImpl(githubRepository: resolver.resolve(GithubRepository.self)!)
        }.inObjectScope(.container)
        container.register(GetReposUseCase.self) { resolver in
            GetReposUseCaseImpl(githubRepository: resolver.resolve(GithubRepository.self)!)
        }.inObjectScope(.container)
    }
}
