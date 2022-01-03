//
//  OrganizationListViewModel.swift
//  Presentation.ViewModel
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import Foundation
import Domain_UseCase

public final class OrganizationListViewModel: ObservableObject {
    private let getOrganizationsUseCase: GetOrganizationsUseCase
    
    @Published public private(set) var state = OrganizationListState.loading
    
    public init(getOrganizationsUseCase: GetOrganizationsUseCase) {
        self.getOrganizationsUseCase = getOrganizationsUseCase
    }
    
    public func initialize() async {
        await load()
    }
    
    public func refresh() async {
        await load()
    }
    
    private func load() async {
        do {
            state = OrganizationListState.loading
            let organizations = try await getOrganizationsUseCase.call()
            state = OrganizationListState.loaded(organizations: organizations)
        } catch {
            state = OrganizationListState.failed(error: error)
        }
    }
}
