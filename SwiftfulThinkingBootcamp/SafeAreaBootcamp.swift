//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/3/25.
//
//any text or buttons keep in safe area

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView{
            Text("yo")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) {
                index in RoundedRectangle(cornerRadius : 20)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(
            Color.red
                .ignoresSafeArea(edges: .all)
        )
        
        
        
        
        
        
        
//        //this doesn't interfere with content in VStack.  Z stack to ignore safe area
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("yerrr")
//                    Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
////            .edgesIgnoringSafeArea(.top)//.bottom, .all
    }
}


#Preview {
    SafeAreaBootcamp()
}
