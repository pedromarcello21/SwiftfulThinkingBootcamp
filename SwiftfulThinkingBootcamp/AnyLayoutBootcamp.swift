//
//  AnyLayoutBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/17/25.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    
    var body: some View {
        VStack(spacing: 20) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout{
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                HStack{
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
