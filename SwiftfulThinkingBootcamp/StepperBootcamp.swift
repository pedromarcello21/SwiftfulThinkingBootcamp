//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/30/25.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)

            Stepper("Stepper 2"){
                //increment
                incrementWidth(amount: 10)
            } onDecrement: {
                decrementWidth(amount: 10)
            }
            .padding(50)
            RoundedRectangle(cornerRadius: 25)
                .frame(width:100 + widthIncrement, height: 100)
        }
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut){
            widthIncrement += amount
        }
    }
    
    func decrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut){
            widthIncrement -= amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
