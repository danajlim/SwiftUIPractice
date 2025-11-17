//
//  DatePickerView.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/18/25.
//

import SwiftUI

struct DatePickerView: View {
    
    @State private var wakeUp = Date.now
    
    var body: some View {
        Spacer()
        
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
            //.labelsHidden()
        
        Spacer()
        
        Text(Date.now, format: .dateTime.hour().minute())
        Text(Date.now, format: .dateTime.day().month().year())
        Text(Date.now.formatted(date: .long, time: .shortened))
        Text(Date.now.formatted(date: .abbreviated, time: .shortened))
        Text(Date.now.formatted(date: .numeric, time: .shortened))
        Spacer()
        
    }
    
    //Date : 연도, 월, 일, 시, 분, 초, 시간대 등 모든 정보
    func exampleDate() {
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
    
    func exampleDates(){
        let now = Date.now
        let tommorow = Date.now.addingTimeInterval(86400)
        let range = now...tommorow
    }
    
    //특정 시간으로 Date 만들기 : DateComponents 사용
    func exampleDates2(){
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        // 현재 캘린더를 사용하여 components에서 Date 객체를 생성합니다.
        let date = Calendar.current.date(from: components ) ?? .now
    }
    
    //Date에서 구성요소 읽어오기 - hour, minute
    func exampleDates3(){
        let components = Calendar.current.dateComponents([.hour,.minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

#Preview {
    DatePickerView()
}
