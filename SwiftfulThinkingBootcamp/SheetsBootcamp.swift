//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/9/25.
//

//one sheet er view
//no logic in sheet () if else.  get mad errors

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
//            .fullScreenCover(
//                isPresented: $showSheet, content: {
//                    SecondScreen()
//                }
//            )
            .sheet(isPresented: $showSheet, content:{
                //DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    //have to memorize
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
            })
        }
    }
}

#Preview {
//    SecondScreen()
    SheetsBootcamp()
}
