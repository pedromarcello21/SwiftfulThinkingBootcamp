//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 5/29/25.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            Button(action: {
                isSelected.toggle()
                
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .background(Color.blue)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(25)
            })
            
            Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .background(Color.blue)
                .frame(maxWidth: .infinity)
                .cornerRadius(25)
                .onTapGesture(count: 2){
                    isSelected.toggle()
                }
        }
    }
}

#Preview {
    TapGestureBootcamp()
}
