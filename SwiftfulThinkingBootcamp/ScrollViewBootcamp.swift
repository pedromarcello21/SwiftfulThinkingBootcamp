//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/2/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View{
//        ScrollView(.horizontal, showsIndicators: true, content: {
//            HStack{
//                ForEach(0..<50) {
//                    index in
//                    Rectangle()
//                        .frame(height: 50)
//                }
//            }
//        })
        ScrollView{
            //lazy makes more efficient data intake wise.  useful when large datasets
            LazyVStack{
                ForEach(0..<10) {
                    index in
                    ScrollView(.horizontal, showsIndicators: false,
                               content: {
                        HStack{
                            ForEach(0..<20){index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width:200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                                
                            }
                        }
                    }
                )
                    
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
