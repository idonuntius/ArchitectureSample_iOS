//
//  ReposMapper.swift
//  Data.Mapper
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

import Domain_Model
import Data_Entity

public struct ReposMapper {
    public func map(entities: [RepoEntity]) -> Repos {
        let models = entities.map { entity in
            mapToRepo(entity: entity)
        }
        return Repos(values: models)
    }
    
    private func mapToRepo(entity: RepoEntity) -> Repo {
        return Repo(id: mapToRepoID(value: entity.id),
                    names: mapToRepoNames(entity: entity),
                    description: entity.description,
                    owner: mapToRepoOwner(entity: entity.owner),
                    countData: mapToRepoCountData(entity: entity))
    }
    
    private func mapToRepoID(value: Int) -> RepoID {
        RepoID(value: value)
    }
    
    private func mapToRepoNames(entity: RepoEntity) -> RepoNames {
        RepoNames(name: entity.name, fullName: entity.fullName)
    }
    
    private func mapToRepoOwner(entity: RepoOwnerEntity) -> RepoOwner {
        RepoOwner(id: mapToRepoOwnerID(value: entity.id),
                  name: entity.login,
                  avatarURL: entity.avatarURL)
    }
    
    private func mapToRepoOwnerID(value: Int) -> RepoOwnerID {
        RepoOwnerID(value: value)
    }
    
    private func mapToRepoCountData(entity: RepoEntity) -> RepoCountData {
        return RepoCountData(forksCount: entity.forksCount,
                             stargazersCount: entity.stargazersCount,
                             watchersCount: entity.watchersCount)
    }
}
