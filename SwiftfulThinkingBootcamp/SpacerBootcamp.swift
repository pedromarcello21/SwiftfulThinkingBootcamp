//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/2/25.
//

///spacers take up a bit of space, have a min length
import SwiftUI

struct SpacerBootcamp: View{
    var body: some View{
//        HStack(spacing: 0){
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .fill(Color.cyan)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//        }
//        .padding(.horizontal, 200)
        
        VStack {
            HStack{
                Image(systemName: "xmark")
                    .font(.title)
                Spacer()
                    .frame(height: 10)
//                    .background(Color.orange)
                Image(systemName: "heart.fill")
                    .font(.title)
            }
            .padding(.horizontal)
            Spacer()
                .frame(width: 10)
//                .background(Color.orange)
        }
    }
}


struct Spacer_Previews : PreviewProvider{
    static var previews: some View {
        SpacerBootcamp()
    }
}
