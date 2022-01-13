//
//  OrganizationListItem.swift
//  Presentation.View
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import SwiftUI
import Domain_Model

struct OrganizationListItem: View {
    let organization: Organization
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                AsyncImage(url: URL(string: organization.avatarUrl)) { result in
                    switch result {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 32, height: 32, alignment: .center)
                    case .failure(_):
                        EmptyView()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.gray)
                    @unknown default:
                        EmptyView()
                    }
                }
                Text(organization.name.value)
            }.padding(16)
            Divider()
        }
    }
}

struct OrganizationListItem_Previews: PreviewProvider {
    static var previews: some View {
        OrganizationListItem(organization: Organization(
            id: OrganizationID(value: -1),
            name: OrgnaizationName(value: "Idonuntius"),
            avatarUrl: "https://avatars.githubusercontent.com/u/10494192?v=4",
            description: "Description"
        ))
    }
}
