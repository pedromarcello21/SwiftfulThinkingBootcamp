//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/19/25.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    

    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        .background(
            Image("palmtree")
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
