//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/6/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Hello, World!")
            Button {
                buttonPressed()
            } label: {
                Text("Press me")
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
