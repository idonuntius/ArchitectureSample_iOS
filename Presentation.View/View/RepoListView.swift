//
//  RepoListView.swift
//  Presentation.View
//
//  Created by 井戸田捺貴 on 2022/01/03.
//

import SwiftUI
import Domain_Model
import Presentation_ViewModel

@MainActor
struct RepoListView: View {
    @ObservedObject private var vm: RepoListViewModel
    
    init(orgName: OrgnaizationName) {
        vm = resolver().resolve(RepoListViewModel.self, argument: orgName)!
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Main(state: vm.state, refresh: vm.refresh)
            }
            .navigationTitle("RepoList")
            .navigationBarTitleDisplayMode(.inline)
            .task {
                await vm.initialize()
            }
        }
    }

    private struct Main: View {
        let state: RepoListState
        let refresh: () async -> Void

        var body: some View {
            switch state {
            case .loading:
                ProgressView()
            case .loaded(let repos):
                ScrollView(.vertical, showsIndicators: true) {
                    LazyVStack {
                        ForEach(repos.values) { repo in
                            RepoListItem(repo: repo)
                                .padding(.leading, 16)
                                .padding(.trailing, 16)
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

struct RepoListView_Previews: PreviewProvider {
    static var previews: some View {
        RepoListView(orgName: OrgnaizationName(value: "org"))
    }
}
