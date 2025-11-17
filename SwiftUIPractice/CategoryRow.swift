//
//  CategoryRow.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/14/25.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    var body: some View {
        Text(categoryName)
            .font(.headline)
//        HStack {
//            ForEach
//        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
        return CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(3))
        )
}
