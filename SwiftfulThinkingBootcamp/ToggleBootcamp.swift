//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/30/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn,
                label:{
                    Text("Change Status")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color.green))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
