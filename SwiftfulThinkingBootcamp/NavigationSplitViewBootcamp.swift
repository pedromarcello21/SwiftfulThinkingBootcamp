//
//  NavigationSplitViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/18/25.
//

//best for macOS

import SwiftUI

struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil
    @State private var selectedVeggie: Veggie? = nil
    @State private var selectedMeat: Meat? = nil

    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            // Primary Column: Category List
            List {
                ForEach(FoodCategory.allCases, id: \.rawValue) { category in
                    Button(category.rawValue.capitalized) {
                        selectedCategory = category
                        // Reset all selections
                        selectedFruit = nil
                        selectedVeggie = nil
                        selectedMeat = nil
                    }
                }
            }
            .navigationTitle("Categories")
        } content: {
            // Secondary Column: Food List based on selected category
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List {
                            ForEach(Fruit.allCases, id: \.rawValue) { fruit in
                                Button(fruit.rawValue.capitalized) {
                                    selectedFruit = fruit
                                    selectedVeggie = nil
                                    selectedMeat = nil
                                }
                            }
                        }
                    case .veggies:
                        List {
                            ForEach(Veggie.allCases, id: \.rawValue) { veggie in
                                Button(veggie.rawValue.capitalized) {
                                    selectedVeggie = veggie
                                    selectedFruit = nil
                                    selectedMeat = nil
                                }
                            }
                        }
                    case .meats:
                        List {
                            ForEach(Meat.allCases, id: \.rawValue) { meat in
                                Button(meat.rawValue.capitalized) {
                                    selectedMeat = meat
                                    selectedFruit = nil
                                    selectedVeggie = nil
                                }
                            }
                        }
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            }
        } detail: {
            // Detail Column: Show selected item
            Group {
                if let fruit = selectedFruit {
                    Text("You selected: \(fruit.rawValue.capitalized)")
                        .font(.largeTitle)
                } else if let veggie = selectedVeggie {
                    Text("You selected: \(veggie.rawValue.capitalized)")
                        .font(.largeTitle)
                } else if let meat = selectedMeat {
                    Text("You selected: \(meat.rawValue.capitalized)")
                        .font(.largeTitle)
                } else {
                    Text("Select a food")
                        .font(.title)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavigationSplitViewBootcamp()
}

enum FoodCategory: String, CaseIterable {
    case fruits, veggies, meats
}

enum Fruit: String, CaseIterable {
    case grape, kiwi, mango
}

enum Veggie: String, CaseIterable {
    case eggplant, artichoke, potato
}

enum Meat: String, CaseIterable {
    case skirt, chuletas, meatballs
}
