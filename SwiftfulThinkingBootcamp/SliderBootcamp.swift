//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 5/18/25.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 10
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
            )
//            Slider(value: $sliderValue)
//                .accentColor(.red)
            
//            Slider(value: $sliderValue, in 0...100)
            Slider(
                value: $sliderValue,
                in: 0...5,
                step: 1.0
            )
                .accentColor(.red)
            


        }
    }
}

#Preview {
    SliderBootcamp()
}
