//
//  Container.swift
//  ArchitectureSample
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import Swinject
import Presentation_ViewModel
import Domain_UseCase
import Data_Repository
import Data_Mapper
import Data_Api

let container: Container = {
    let container = Container()
    Assembler(container: container).apply(assemblies: [
        ViewModelAssembly(),
        UseCaseAssembly(),
        RepositoryAssembly(),
        MapperAssembly(),
        ApiAssembly()
    ])
    return container
}()
