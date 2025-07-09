//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/31/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
        //seems to apply top down, stack and build
            .background(Color.teal)
//            .frame(width: 300, height: 300, alignment: .leading)
            .frame(maxWidth: .infinity, maxHeight: 400, alignment: .center)
            .background(Color.green)
            .frame(maxWidth: 300, maxHeight: .infinity)
            .background(Color.orange)
            
            
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews:  some View{
        FrameBootcamp()
    }
}
