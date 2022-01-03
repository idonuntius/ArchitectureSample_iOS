//
//  MapperAssembly.swift
//  Data.Mapper
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import Swinject

public struct MapperAssembly: Assembly {
    public init() {
    }
    
    public func assemble(container: Container) {
        container.register(OrganizationsMapper.self) { _ in
            OrganizationsMapper()
        }.inObjectScope(.container)
    }
}
