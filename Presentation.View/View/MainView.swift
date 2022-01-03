//
//  MainView.swift
//  Presentation.View
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import SwiftUI

public struct MainView: View {
    public init() {
    }
    
    public var body: some View {
        TabView {
            OrganizationListView().tabItem {
                Image(systemName: "list.bullet.rectangle.portrait")
                Text("Orgs")
            }
            
            MeView().tabItem {
                Image(systemName: "person.circle")
                Text("Me")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
