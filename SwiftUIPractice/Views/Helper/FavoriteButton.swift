//
//  FavoriteButton.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/14/25.
//

import SwiftUI

struct FavoriteButton: View {
    
    //데이터를 소유하지 않고, 다른 뷰가 소유하고 있는 데이터에 대한 참조 역할
    //@Binding을 사용하는 뷰는 데이터를 소유하지 않습니다. (읽고/쓰기만 가능)
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
