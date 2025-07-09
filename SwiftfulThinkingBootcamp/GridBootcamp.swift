//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/2/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 20, maximum: 300), spacing: nil, alignment: nil)

        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
        
    ]
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            LazyVGrid(
                columns: columns,
                content: {
                    Section(header: Text("Library"))
                    {
                        ForEach(0..<50){
                            index in Rectangle()
                                .frame(height: 150)
                        }
                    }
                }
                )};
        }
    }

#Preview {
    GridBootcamp()
}
