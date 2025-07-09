//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 5/18/25.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView(selectedTab: $selectedTab)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            Text("Browse Tab")
                .tabItem{
                    Label("Browse", systemImage: "magnifyingglass")
                }
                .tag(1)
            Text("Profile Tab")
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(2)
        }
        .accentColor(.blue)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            ZStack{
                Text("Home Tab")
                    .font(.largeTitle)
            }
            Button("Go to profile"){
                selectedTab = 2
            }
            .foregroundColor(.red)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
        }
        
    }
}
