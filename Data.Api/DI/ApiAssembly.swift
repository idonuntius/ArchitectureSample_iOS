//
//  ApiAssemby.swift
//  Data.Api
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

import Swinject

public struct ApiAssembly: Assembly {
    public init() {
    }
    
    public func assemble(container: Container) {
        container.register(GithubApi.self) { _ in
            GithubApi()
        }.inObjectScope(.container)
    }
}
