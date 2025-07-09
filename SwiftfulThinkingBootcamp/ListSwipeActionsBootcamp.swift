//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/20/25.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "Apples", "Bananas", "Oranges", "Pineapple"
    ]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: false){
                            Button("Archive"){
                                
                                
                            }
                            .tint(.green)
                            Button("Save"){
                                
                                
                            }
                            .tint(.blue)
                            Button("Junk"){
                                
                                
                            }
                            .tint(.black)
                        }
                
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: true){
                                Button("Share"){
                                    
                                    
                                }
                                .tint(.yellow)
                            }
            }
//            .onDelete(perform: delete)
            }
        }
    
    func delete(indexSet: IndexSet){
        print("Deleted items: \(indexSet)")
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
