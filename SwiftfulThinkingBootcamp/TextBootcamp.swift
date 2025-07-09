//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/11/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View{
        Text("Yo! Finna learn this ish and cop that chicken yeerrrd".capitalized)
//            .font(.title)
            //.fontWeight(.semibold)
//            .underline(true, color: .blue)
//            .strikethrough(true, color: .red)
            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(50)
//            .kerning(10)
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            .frame(width:200, height:100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View{
        TextBootcamp()
    }
}
