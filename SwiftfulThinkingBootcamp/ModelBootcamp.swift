//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 5/30/25.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Pedro", "Tay", "Merk", "Arbash", "Andrew", "Sasha"
        UserModel(
            displayName: "Pedro Marcello",
            userName: "pmarcello",
            followerCount: 21, isVerified: false
        ),
        UserModel(
            displayName: "Tay",
            userName: "tpurcell",
            followerCount: 9999, isVerified: true
        ),
        UserModel(
            displayName: "merk",
            userName: "m3rk",
            followerCount: 7, isVerified: false
        ),
        UserModel(
            displayName: "Arbash",
            userName: "bigal",
            followerCount: 15, isVerified: false
        ),
        UserModel(
            displayName: "Andrew",
            userName: "candyandy",
            followerCount: 15, isVerified: false
        ),
        UserModel(
            displayName: "sasha",
            userName: "asdfmvp",
            followerCount: 15, isVerified: false
        )
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0){
                        Circle().frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text("\(user.displayName)")
                            Text("@\(user.userName)")
                        }
                        if user.isVerified{
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.blue)
                        }
                        Spacer()
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                }.padding(.vertical, 10)
                }.listStyle(InsetGroupedListStyle())
            }
            .navigationTitle("Users")
        }
    }

#Preview {
    ModelBootcamp()
}
