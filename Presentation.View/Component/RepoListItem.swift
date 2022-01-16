//
//  RepoListItem.swift
//  Presentation.View
//
//  Created by 井戸田捺貴 on 2022/01/16.
//

import SwiftUI
import Domain_Model

struct RepoListItem: View {
    let repo: Repo

    var body: some View {
        VStack(alignment: .leading) {
            Text(repo.names.fullName)
                .font(.title2)
                .foregroundColor(.blue)
                .fontWeight(.bold)
            if repo.description != nil {
                Text(repo.description!)
                    .foregroundColor(.gray)
            }
            HStack(spacing: 8) {
                HStack(alignment: .center, spacing: 2) {
                    Image(systemName: "star")
                        .foregroundColor(.gray)
                    Text(repo.countData.stargazersCount.description)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                HStack(alignment: .center, spacing: 2) {
                    Image(systemName: "shuffle")
                        .foregroundColor(.gray)
                    Text(repo.countData.forksCount.description)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
            }
            .padding(.top, 8)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(.white)
        .cornerRadius(16)
        .shadow(
            color: Color(.secondarySystemFill),
            radius: 20,
            x: 2,
            y: 2
        )
    }
}

struct RepoListItem_Previews: PreviewProvider {
    static var previews: some View {
        RepoListItem(
            repo: Repo(
                id: RepoID(value: 1),
                names: RepoNames(
                    name: "name",
                    fullName: "fullName"
                ),
                description: "description",
                owner: RepoOwner(
                    id: RepoOwnerID(value: 2),
                    name: "RepoOwnerName",
                    avatarURL: "avatarURL"
                ),
                countData: RepoCountData(
                    forksCount: 10,
                    stargazersCount: 20,
                    watchersCount: 30
                )
            )
        )
    }
}
