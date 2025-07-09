//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/9/25.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIN: Bool = false
    
    var body: some View {
        VStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your Name Here")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            Text("Sign Out")
                .foregroundColor(.white)
                .background(Color.black)
                .onTapGesture{
                    signOut()
                }

        }
        .font(.title)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        
    }
    func signOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()){
            currentUserSignedIN = false

        }
    }
}

#Preview {
    ProfileView()
}
