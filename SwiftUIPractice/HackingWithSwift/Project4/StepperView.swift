//
//  StepperView.swift
//  SwiftUIPractice
//
//  Created by Dana Lim on 11/18/25.
//

import SwiftUI

struct StepperView: View {
    
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12, step: 0.5)
    }
}

#Preview {
    StepperView()
}
