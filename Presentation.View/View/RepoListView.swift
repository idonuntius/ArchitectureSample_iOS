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
    @ObservedObject private var repoListViewModel: RepoListViewModel
    
    init(orgName: OrgnaizationName) {
        repoListViewModel = resolver().resolve(RepoListViewModel.self, argument: orgName)!
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    Text("RepoList")
                }
            }
            .navigationTitle("RepoList")
            .navigationBarTitleDisplayMode(.inline)
            .task {
                await repoListViewModel.initialize()
            }
        }
    }
}

struct RepoListView_Previews: PreviewProvider {
    static var previews: some View {
        RepoListView(orgName: OrgnaizationName(value: "org"))
    }
}
