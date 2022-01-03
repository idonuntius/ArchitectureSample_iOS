//
//  OrganizationListView.swift
//  Presentation.View
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import SwiftUI
import Presentation_ViewModel
import Domain_Model

@MainActor
struct OrganizationListView: View {
    @ObservedObject private var vm: OrganizationListViewModel
    
    init() {
        vm = resolver().resolve(OrganizationListViewModel.self)!
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Main(state: vm.state, refresh: vm.refresh)
            }
            .navigationTitle("OrganizationList")
            .task {
                await vm.initialize()
            }
        }
    }
    
    private struct Main: View {
        let state: OrganizationListState
        let refresh: () async -> Void
        
        var body: some View {
            switch state {
            case .loading:
                ProgressView()
            case .loaded(let organizations):
                ScrollView(.vertical, showsIndicators: true) {
                    LazyVStack {
                        ForEach(organizations.values) { org in
                            OrganizationListItem(organization: org)
                        }
                    }
                    .refreshable() {
                        await refresh()
                    }
                }
            case .failed(_):
                Text("Error")
            }
        }
    }
}

struct OrganizationListView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationListView()
    }
}
