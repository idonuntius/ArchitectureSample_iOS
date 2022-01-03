//
//  ViewModelAssembly.swift
//  Presentation.ViewModel
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import Swinject
import Domain_UseCase

public struct ViewModelAssembly: Assembly {
    public init() {
    }
    
    public func assemble(container: Container) {
        container.register(OrganizationListViewModel.self) { resolver in
            OrganizationListViewModel(getOrganizationsUseCase: resolver.resolve(GetOrganizationsUseCase.self)!)
        }
    }
}
