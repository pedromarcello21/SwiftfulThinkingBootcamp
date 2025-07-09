//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 5/29/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    Text("Primary")
                        .foregroundColor(.primary)
                    Text("Secondary")
                        .foregroundColor(.secondary)
                    Text("Black")
                        .foregroundColor(.black)
                    Text("White")
                        .foregroundColor(.white)
                    Text("White")
                        .foregroundColor(.white)
                    
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
        .preferredColorScheme(.dark)
}
