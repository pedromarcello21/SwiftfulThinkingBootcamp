//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/13/25.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet){
            MyNextView(detents: $detents)
                //.presentationDetents([.medium, .large])
                //.presentationDetents([.fraction(0.25), .medium, .large])
                .presentationDetents([.medium, .height(600), .large], selection: $detents)
                .presentationDragIndicator(.hidden)
                //.interactiveDismissDisabled()
        }
//        .onAppear{
//            showSheet = true
//        }
    }
}

struct MyNextView: View{
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 20){
                Button("MEDIUM"){
                    detents = .medium
                }
                Button("600px"){
                    detents = .height(600)
                }
                Button("LARGE"){
                    detents = .large
                }
            }
        }
        .presentationDetents([.medium, .height(600), .large], selection: $detents)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ResizableSheetBootcamp()
}
