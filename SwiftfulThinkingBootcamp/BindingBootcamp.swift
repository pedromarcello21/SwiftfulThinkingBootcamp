//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/7/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
                
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonBackground: Color = Color.blue
    @Binding var title: String
    
    var body: some View{
            Button {
                backgroundColor = Color.orange
                buttonBackground = Color.red
                title = "Clicked :D"
                
            } label: {
                Text("Button")
                .padding()
                .background(buttonBackground)
                .cornerRadius(20)
                .foregroundColor(Color.white)
            }

        
    }
}

#Preview {
    BindingBootcamp()
}
