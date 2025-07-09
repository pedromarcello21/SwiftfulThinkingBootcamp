//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/6/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(.all)
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "yo", count: 21, color: .orange)
            MyItem(title: "yerr", count: 12, color: .purple)
        }
    }
    
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text(title)
            Text("\(count)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
