//
//  SwiftUIPracticeApp.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/13/25.
//

import SwiftUI

@main
struct SwiftUIPracticeApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
