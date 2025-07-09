//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 5/29/25.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Loading..."
    @State private var colors: [Color] = Array(repeating: .blue, count: 50)

    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50, id: \.self){
                         index in RoundedRectangle(cornerRadius: 8)
                            .fill(colors[index])
                            .frame(width: 200, height: 300)
                            .onAppear{
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                        colors[index] = .black
                                    }
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    myText = "Welcome!"
                }
            })
            .navigationTitle("On Appear")
            .onDisappear(perform: {
                myText = "Bye!"
            })
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
