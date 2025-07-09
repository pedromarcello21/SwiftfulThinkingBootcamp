//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/2/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Howdy", "yerrr"]
    let myString: String = "Yo"
    
    //MARK: BODY
    
    //option + command + left arrow key to fold comments
    
    var body: some View {
        VStack {
//            ForEach(0..<10){
//                index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("point: \(index)")
//                }
//            }
            ForEach(data.indices) { index in
                Text("\(data[index]): index \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
