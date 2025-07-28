//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/28/25.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *){
            ContentUnavailableView.search(text: "abc")//(
//                "No internet connection",
//                systemImage: "wifi.slash",
//                description: Text("Please find a stable connection")
//            )
        } else {
            //fallback on earlier versions
        }
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
