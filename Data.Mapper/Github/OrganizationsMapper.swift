//
//  OrganizationsMapper.swift
//  Data.Mapper
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

import Domain_Model
import Data_Entity

public struct OrganizationsMapper {
    public func map(entities: [OrganizationEntity]) -> Organizations {
        let models = entities.map { entity in
            mapToOrganization(entity: entity)
        }
        return Organizations(values: models)
    }
    
    private func mapToOrganization(entity: OrganizationEntity) -> Organization {
        Organization(id: mapToOrganizationID(id: entity.id),
                     name: mapToOrganizationName(name: entity.login),
                     avatarUrl: entity.avatarUrl,
                     description: entity.description)
    }
    
    private func mapToOrganizationID(id: Int) -> OrganizationID {
        OrganizationID(value: id)
    }

    private func mapToOrganizationName(name: String) -> OrgnaizationName {
        OrgnaizationName(value: name)
    }
}
