//
//  ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/17/25.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            ViewThatFits{
                Text("This is some text I'd like to display to user")
                Text("This is some text I'd like to display")
                Text("This is some text")
            }
        }
        .frame(height: 300)
        .cornerRadius(20)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
