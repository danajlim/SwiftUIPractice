//
//  CategoryHome.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/14/25.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List{
                ForEach(modelData.categories.keys.sorted(), id: \.self) {
                    key in Text(key)
                }
            }
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
