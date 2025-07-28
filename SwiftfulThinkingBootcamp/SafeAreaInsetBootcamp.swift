//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/17/25.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10){ _ in
                Rectangle()
                    .frame(height:300)
                
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
            //            .overlay(
            //                Text("Hi")
            //                    .frame(maxWidth: .infinity)
            //                    .background(Color.yellow),
            //                alignment: .bottom
            //            )
            
            
            .safeAreaInset(edge: .top, alignment: .center, spacing: nil){
                Text("Hi")
//                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
