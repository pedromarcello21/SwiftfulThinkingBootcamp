//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/9/25.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits: [String] = ["Apples", "Bananas", "Oranges", "Pineapple", "Strawberries"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack (path: $stackPath){
            ScrollView {
                VStack(spacing: 20) {
                    
                    Button("Super sehue!"){
                        stackPath.append(contentsOf: ["Coconut", "Watermelon", "Mango"])
                    }
                    
                    ForEach(fruits, id: \.self){
                        fruit in NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                        
                        ForEach(0..<5){ x in
                            NavigationLink(value: x){
                                Text("Screen \(x)")
                            }
                            .navigationTitle("Navigation Bootcamp")
                            .navigationDestination(for: Int.self){
                                value in MySecondScreen(value: value)
                            }
                            .navigationDestination(for: String.self){
                                value in Text("Another Screen: \(value)")
                            }
                        }
                }
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value:Int){
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
