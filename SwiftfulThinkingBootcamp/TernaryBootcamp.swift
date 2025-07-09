//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/7/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState)"){
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 50)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 300, height: isStartingState ? 100 : 200)
        }
    }
}

#Preview {
    TernaryBootcamp()
}
