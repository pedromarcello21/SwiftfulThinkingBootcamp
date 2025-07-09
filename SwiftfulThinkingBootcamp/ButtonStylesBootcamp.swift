//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/20/25.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button("Button Title"){
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .buttonStyle(.plain)
            
            Button("Button Title"){
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .buttonStyle(.bordered)
            
            Button("Button Title"){
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Button Title"){
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .buttonStyle(.borderless)
            
            Button{
                
            } label: {
                Text("Button Title")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
        }
    }
}

#Preview {
    ButtonStylesBootcamp()
}
