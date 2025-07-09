//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/19/25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url){ phase in
            switch phase{
            case .empty: ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(10)
            case .failure:
                Image(systemName: "xmark")
                    .font(.headline)
            default:
                Image(systemName: "xmark")
                    .font(.headline)
                
            }
        }
        
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(10)
//        }, placeholder: {
//            ProgressView()
//        })
            
    }
}

#Preview {
    AsyncImageBootcamp()
}
