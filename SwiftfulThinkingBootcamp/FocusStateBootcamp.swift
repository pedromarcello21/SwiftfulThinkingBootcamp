//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/20/25.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable{
        case username
        case password
    }
    
    @State private var username : String = ""
//    @FocusState private var usernameInFocus : Bool
    @State private var password : String = ""
//    @FocusState private var passwordInFocus : Bool
    @FocusState private var fieldInFocus: OnboardingFields?
    
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.2))
                .cornerRadius(10)
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.2))
                .cornerRadius(10)
            Button("Sign Up"){
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Signing Up...")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }

//                usernameInFocus.toggle()
            }
//            Button("Toggle Focus State"){
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
//                self.usernameInFocus = true
//            }
        }
    }

#Preview {
    FocusStateBootcamp()
}
