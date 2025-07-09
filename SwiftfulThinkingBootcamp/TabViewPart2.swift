//
//  TabViewPart2.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 5/18/25.
//

import SwiftUI

struct TabViewPart2: View {
    
    @State var selectedTab: Int = 0
    let icons: [String] = ["sun.max.fill", "moon.fill", "function", "eyes"]
    
    var body: some View {
        TabView{
            ForEach(icons, id: \.self) {
                icon in Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabViewPart2()
}
