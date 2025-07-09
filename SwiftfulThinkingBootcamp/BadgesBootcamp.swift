//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/20/25.
//

import SwiftUI

//List
//TabView

struct BadgesBootcamp: View {
    var body: some View {
        TabView{
            List{
                Text("Yo")
                    .badge("Features to be implemented")
            }
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
                .badge(5)
            Color.blue
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
            Color.green
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
        }
    }
}

#Preview {
    BadgesBootcamp()
}
