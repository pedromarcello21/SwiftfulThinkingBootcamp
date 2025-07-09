//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/12/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "figure.skateboarding.circle.fill")
//            .font(.largeTitle)
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
            .scaledToFill()
            .font(.system(size:200))
            .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
            .frame(width:300, height:100)
//            .clipped()
    }
}


struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
