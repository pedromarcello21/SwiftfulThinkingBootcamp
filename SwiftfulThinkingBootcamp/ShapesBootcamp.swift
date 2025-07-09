//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/11/24.
//
import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
        //Capsule()
        RoundedRectangle(cornerRadius: 50)
            .frame(width:300, height:200)
//            .fill(Color.blue)
//            .stroke()
//            .stroke(Color.blue, lineWidth: 30)
//            .stroke(style:StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from: 0.2, to:1.0)
//            .stroke(Color.orange, lineWidth: 50)
    }
}


struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
