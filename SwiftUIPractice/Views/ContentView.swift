//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
