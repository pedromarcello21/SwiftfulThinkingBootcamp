//
//  ContextMenu.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/29/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.black
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .green
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .gray
            }, label: {
                Label("Report post", systemImage: "xmark")
            })
            Button(action: {
                backgroundColor = .red
            }, label: {
                Label("Like post", systemImage: "heart.fill")
            })
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
