//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/9/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
            }
            
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1.0 : 0.0)
//                    .transition(.slide)
//                    .transition(.move(edge: .bottom))
//                    .animation(.easeInOut)
//                    .transition(
////                        AnyTransition.scale.animation(.easeInOut)
//                        AnyTransition.opacity.animation(.easeInOut)
//                    )
                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: .move(edge: .bottom)
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                    .animation(.easeInOut)
            }
        }
//        .ignoresSafeArea(.all)
    }
}

#Preview {
    TransitionBootcamp()
}
