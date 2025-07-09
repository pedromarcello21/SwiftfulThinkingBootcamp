//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/12/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("palmtree")
//            .renderingMode(.template) for transparent pics
            .resizable()
            .scaledToFit()
//            .cornerRadius(30)
            .clipShape(Circle())
            

    }
}


struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
