//
//  @StorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/9/25.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName{
                Text(name)
            }
            Button("Save".uppercased()){
                let name = "marcello"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
