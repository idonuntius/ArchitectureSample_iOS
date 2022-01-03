//
//  ReppositoryAssembly.swift
//  Data.Repository
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

import Swinject
import Domain_Repository
import Data_Api
import Data_Mapper

public struct RepositoryAssembly: Assembly {
    public init() {
    }
    
    public func assemble(container: Container) {
        container.register(GithubRepository.self) { resolver in
            GithubRepositoryImpl(githubApi: resolver.resolve(GithubApi.self)!,
                                 organizationMapper: resolver.resolve(OrganizationsMapper.self)!)
        }.inObjectScope(.container)
    }
}
