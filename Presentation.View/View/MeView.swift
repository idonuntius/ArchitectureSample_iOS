//
//  MeView.swift
//  Presentation.View
//
//  Created by 井戸田捺貴 on 2022/01/02.
//

import SwiftUI

struct MeView: View {
    var body: some View {
        NavigationView {
            Text("MeView")
                .navigationTitle("Me")
        }
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
