//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/9/25.
//
//Only need one navigation

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                NavigationLink("yo") {
                    MyOtherScreen()
                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Yo's")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing:
                    NavigationLink(
                        destination: SettingsView(),
                        label: {
                            Image(systemName: "gear")
                        }
                    )
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
            //use own back button
                .navigationBarHidden(true)
            VStack{
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("screenception"))

            }
            
        }
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings")
    }
}

#Preview {
    NavigationViewBootcamp()
}
