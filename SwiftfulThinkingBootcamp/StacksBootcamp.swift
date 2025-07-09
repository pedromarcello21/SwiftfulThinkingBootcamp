//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 12/31/24.
//

import SwiftUI

struct StacksBootcamp: View{
    var body: some View {
        ZStack {
            Circle()
            VStack(alignment: .leading, spacing: 1,
                   content: {
                ZStack {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 200, height: 100)
                    HStack{
                        Circle()
                            .frame(width: 40, height: 40)
                        Circle()
                            .frame(width: 40, height: 40)
                        Circle()
                            .frame(width: 40, height: 40)
                    }
                    .background(Color.red)
                    
                }
                ZStack {
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 150, height: 100)
                    HStack {
                        Circle()
                            .frame(width: 30, height: 30)
                        Circle()
                            .frame(width: 30, height: 30)
                    }
                    .frame(height: 100, alignment: .bottom)
                    .background(Color.secondary)
                }
                ZStack(alignment: .bottomTrailing) {
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 120, height: 100)
                    Circle()
                        .frame(width: 90, height: 20, alignment: .trailing)
                        .background(Color.mint)
                }
            }
            )
            .background(Color.gray)
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews:  some View{
        StacksBootcamp()
    }
}
