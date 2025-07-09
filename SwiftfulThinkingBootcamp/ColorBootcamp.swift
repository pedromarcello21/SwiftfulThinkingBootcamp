//
//  ColorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/11/24.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
                //Color(#colorLiteral(red: 0.5, green: 0.7, blue: 0.2, alpha: 1.0)) seen below

//                Color(#colorLiteral(red: 0.2659582794, green: 0.08753245324, blue: 0.6868799925, alpha: 1))
                Color("CustomColor")
            )
            .frame(width:300, height: 200)
            .shadow(color:Color("CustomColor"), radius: 10)
    }
}


struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}

