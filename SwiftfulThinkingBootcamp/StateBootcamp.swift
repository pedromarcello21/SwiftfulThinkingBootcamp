//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/3/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    //var can change, let can't
    @State var backgroundColor: Color = Color.green
    
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack(spacing:20){
                Text("Title")
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1"){
                        self.backgroundColor = Color.blue
                        count+=1
                    }
                    Button("Button 2"){
                        self.backgroundColor = Color.green
                        count+=1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
