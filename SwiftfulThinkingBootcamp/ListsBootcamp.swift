//
//  ListsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/25/25.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = [
        "Apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "eggplant"
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section(
                    header: HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }) {
                        ForEach(fruits, id: \.self){
                            fruit in Text(fruit.capitalized)
                                .font(.caption)
                                .listRowBackground(Color.pink)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                Section(
                    header: Text("Veggies")){
                    ForEach(veggies, id: \.self){
                        veggies in Text(veggies.capitalized)
                    }
                }
            }
            .accentColor(.purple)
            ////diff styles.  can be diff across devices
//            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View{
        Button("Add", action: {
            add()
        })
    }
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    func add(){
        fruits.append("Coconut")
    }
}

#Preview {
    ListsBootcamp()
}
