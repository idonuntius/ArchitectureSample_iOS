//
//  ArchitectureSampleApp.swift
//  ArchitectureSample
//
//  Created by 井戸田捺貴 on 2022/01/01.
//

import SwiftUI
import Presentation_View

@main
struct ArchitectureSampleApp: App {
    init() {
        resolver = { container }
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
