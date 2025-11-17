//
//  LandmarkDetail.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/14/25.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    //인덱스값 계산
    var landmarkIndex: Int {
        //배열의 각 요소를 순회하며 해당 요소의 id가 현재 뷰가 가지고 있는 landmark 객체의 id와 일치하는지 확인
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView{
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height:300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                                    }
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }

#Preview {
    let modelData = ModelData()
    LandmarkDetail(landmark: ModelData().landmarks[0])
        .environment(modelData)
}
