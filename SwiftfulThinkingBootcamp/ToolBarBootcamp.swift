//
//  ToolBarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/13/25.
//

import SwiftUI

struct ToolBarBootcamp: View {
    
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths){
            ZStack{
                Color.white.ignoresSafeArea()
                
                ScrollView{
                    ForEach(0..<50){
                        _ in Rectangle()
                            .fill(Color.blue)
                            .frame(width:200, height: 200)
                    }
                }
            }
            .navigationTitle("ToolBar")
            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "gear")
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu{
                Button("Screen 1"){
                    paths.append("Screen 1")
                }
                Button("Screen 2"){
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self){ value in
                    Text("New Screen: \(value)")
            }
        }
    }
}

#Preview {
    ToolBarBootcamp()
}
