//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/3/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
//            Button("Click meeeee", action: {
//                self.title = "Button was pressed"
//            })
//            Button(action: {
//                self.title = "Button 2 was pressed"
//            }, label: {
//                Text("clickme again")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .padding(.horizontal, 20)
//                    .background(
//                        Color.blue
//                            .cornerRadius(10)
//                            .shadow(radius: 10)
//                    )
//            })
            Button(action: {self.title = "Liked"}) {
                Image(systemName: "heart.fill")
                    .foregroundStyle(Color.red)
                    .font(.largeTitle)
            }
            Button(action: {self.title = "Entered"}) {
                Text("Enter")
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                    )
                    
            }
        }
        
        
        
    }
}

#Preview {
    ButtonsBootcamp()
}
