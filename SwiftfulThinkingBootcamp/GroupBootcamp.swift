//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/17/25.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundColor(.blue)
            .font(.caption)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
