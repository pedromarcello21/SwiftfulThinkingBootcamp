//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/9/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    
    let timing: Double = 10
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
                
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 250 : 50, height: 100)
            //spring most popular
                .animation(.spring(
                    //timing
                    response: 0.5,
                    //bounce back od physics type beat
                    dampingFraction: 0.5,
                    blendDuration: 1.0
                ))
//                .animation(Animation.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 250 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 250 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 250 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
