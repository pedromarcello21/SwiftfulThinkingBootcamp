//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/9/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button"){
//                withAnimation(Animation.default.delay(1)){
//                    isAnimated.toggle()
//                }
                withAnimation(
                    Animation
                        .default
                        .repeatCount(5, autoreverses: true)
                )
                        {
                    isAnimated.toggle()
                }
                
            }
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 20)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 40 : 80,
                    height: isAnimated ? 80 : 40
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 100 : 0)
            //below will continue indefinitely, maybe better at top because animation triggered by action
//                .animation(Animation
//                    .default
//                    .repeatForever(autoreverses: true)
//                )
        }
    }
}

#Preview {
    AnimationBootcamp()
}
