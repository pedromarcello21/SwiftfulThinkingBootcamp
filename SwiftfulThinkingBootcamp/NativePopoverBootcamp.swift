//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/17/25.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 🤗",
        "Average 🙂",
        "Wack 🤢"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Provide feedback"){
                showPopover.toggle()
            }
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(feedbackOptions, id: \.self){
                        option in Button(option){
                            
                        }
                        if option != feedbackOptions.last! {
                            Divider()
                        }
                    }
                        .padding()
                        .presentationCompactAdaptation(.popover)
                }
            })
//            .popover(isPresented: $showPopover){
//                Text("Hello, subscribers!")
//                    .padding()
//                    .presentationCompactAdaptation(.sheet)
//            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
