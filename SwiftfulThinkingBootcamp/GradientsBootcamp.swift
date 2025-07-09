//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/12/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View{
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)), Color(#colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1))]),
//                    startPoint: .leading,
//                    endPoint: .trailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2659582794, green: 0.08753245324, blue: 0.6868799925, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]),
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 200
//                )
                AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2659582794, green: 0.08753245324, blue: 0.6868799925, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), center: .leading,
                                angle: .degrees(180+45))
            )
            .frame(width: 300, height: 200, alignment: .center)
    }
}

struct GradientsBootcamp_preview: PreviewProvider{
    static var previews: some View{
        GradientsBootcamp()
    }
}
