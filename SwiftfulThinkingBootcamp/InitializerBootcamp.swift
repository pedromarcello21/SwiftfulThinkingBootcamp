//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/2/24.
//
import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit){
        self.count = count
        
        if fruit == .grape{
            self.title = "Grapes"
            self.backgroundColor = .purple
        } else {
            self.title = "Kiwis"
            self.backgroundColor = .green
        }
    }
    
    enum Fruit {
        case grape
        case kiwi
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
            Text("\(title)")
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .foregroundColor(.white)
        
    }
}


struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        //below is the init statement
        HStack {
            InitializerBootcamp(count: 21, fruit: .grape)
            InitializerBootcamp(count: 12, fruit: .kiwi)
        }
    }
}
