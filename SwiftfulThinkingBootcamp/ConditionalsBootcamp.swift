//
//  ConditionalsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/7/25.
//

//logic exercise lk

import SwiftUI

struct ConditionalsBootcamp: View {
    
    @State var circleState: Bool = true
    @State var title: String = "Show Circle"
    @State var rectangleState: Bool = true
    @State var title2: String = "Show Rectangle"
    @State var isLoading: Bool = false



    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is Loading... \(isLoading.description)"){
                isLoading.toggle()
            }
            if isLoading{
                ProgressView()
            }
            
            
            
            Button {
                circleState.toggle()
                if circleState {
                    title = "Hide Circle"
                } else {
                    title = "Show Circle"
                }
            } label: {
                Text("\(title): \(circleState.description)")
                    .padding()
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(20)
            }
            
            Button {
                rectangleState.toggle()
                if rectangleState {
                    title2 = "Hide Rectangle"
                } else {
                    title2 = "Show Rectangle"
                }
            } label: {
                Text("\(title2): \(rectangleState.description)")
                    .padding()
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(20)
            }
            
            if circleState {
                Circle()
                    .frame(width:30, height:30)
            } else if rectangleState{
                Rectangle()
                    .frame(width:30, height:30)
            } else{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 200)
            }
            
            if circleState && rectangleState{
                Text("Both true")
            }
            
            if circleState || rectangleState{
                Text("atleast one state is true")
            }

        }
    }
}

#Preview {
    ConditionalsBootcamp()
}
