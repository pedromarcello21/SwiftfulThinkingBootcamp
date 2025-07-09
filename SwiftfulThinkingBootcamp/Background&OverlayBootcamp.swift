//
//  Background&OverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/31/24.
//

import SwiftUI

struct BackgroundOverlay: View {
    var body: some View {
//        Text("Hello, World!")
//            .frame(width: 100, height: 100, alignment: .center)
//            .background(
//                Circle()
//                    .fill(Color.blue)
//            )
//            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle()
//                    .fill(Color.green)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width:50, height: 50)
//            )
//        
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width:110, height:110)
//                , alignment: .bottom
//                    
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size:40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.pink]),
                            startPoint: .topLeading,
                            endPoint: .bottomLeading)
                    )
                    .frame(width: 100, height: 100)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                        , alignment: .bottomTrailing
                        
                    )
            )

    }
}

struct BackgroundOverlay_Previews: PreviewProvider {
    static var previews:  some View{
        BackgroundOverlay()
    }
}
