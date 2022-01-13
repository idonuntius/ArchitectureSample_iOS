//
//  RepoListViewModel.swift
//  Presentation.ViewModel
//
//  Created by 井戸田捺貴 on 2022/01/08.
//

import Foundation
import Domain_UseCase
import Domain_Model

public final class RepoListViewModel: ObservableObject {
    private let getReposUseCase: GetReposUseCase
    
    @Published public private(set) var organizationName: OrgnaizationName
    @Published public private(set) var state = RepoListState.loading
    
    public init(getReposUseCase: GetReposUseCase, organizationName: OrgnaizationName) {
        self.getReposUseCase = getReposUseCase
        self.organizationName = organizationName
    }
    
    public func initialize() async {
        await load()
    }
    
    public func refresh() async {
        await load()
    }
    
    private func load() async {
        do {
            state = RepoListState.loading
            let repos = try await getReposUseCase.call(organizationName: organizationName)
            state = RepoListState.loaded(repos: repos)
        } catch {
            state = RepoListState.failed(error: error)
        }
    }
}
