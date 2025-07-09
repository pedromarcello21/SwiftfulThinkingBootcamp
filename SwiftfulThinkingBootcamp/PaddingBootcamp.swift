//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/2/25.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View{
        VStack(alignment: .leading) {
            Text("Yo")
                .padding(.bottom, 20)
            //            .background(Color.orange)
            ////            .padding() .all is default.  Also vertical, horizontal
            //            .padding(.all, 50)
            //            .padding(.leading, 20)
            //            .background(Color.blue)
                .font(.title)
                .fontWeight(.semibold)
            Text("This is the description of whats going on in this screen there's mad ishes goin type shiii aha ")

        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10
                )
        )
        .padding(.horizontal, 10)

    }
}

struct Padding_Previews : PreviewProvider{
    static var previews: some View {
        PaddingBootcamp()
    }
}
