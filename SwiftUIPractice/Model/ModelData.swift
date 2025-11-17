//
//  ModelDara.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/13/25.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    
    //전체 랜드마크 목록을 카테고리별로 그룹화하여 딕셔너리로 반환
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks, // 원본 랜드마크 배열을 그룹화
            by: { $0.category.rawValue } // Landmark 객체의 category.rawValue (문자열 이름)을 기준으로 그룹화
        )
    }
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
