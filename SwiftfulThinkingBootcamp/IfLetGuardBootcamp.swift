//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 5/29/25.
//

//Dont force unwrap values!!!

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Safe Coding Practice")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                if isLoading{
                    ProgressView()
                }
                Spacer()
                Button("Sign in"){
                    //uncomment below to see scenario of not having user and trying to log in
                    currentUserID = "pedromarcello21"
                    
                    loadData2()
                    
                }
                .disabled(isLoading)
            }
            .navigationTitle("Safe Coding!")
            .onAppear{
                loadData()
            }
        }
    }
    
    func loadData(){
        if let userID = currentUserID{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
    //            guard let unwrappedString = try? JSONDecoder().decode(String.self, from: Data("Hello World!".utf8)) else {
    //                self.displayText = "Error decoding JSON"
    //                return
    //            }
    //            self.displayText = unwrappedString
                isLoading = false
                displayText = "Welcome: \(userID) \nThis is new data!"
            }
            
        } else{
            displayText = "Login!"
        }

    }
    func loadData2(){
        guard let userID = currentUserID else{
            displayText = "Error.  There is no userID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            isLoading = false
            displayText = "Welcome: \(userID) \nThis is new data!"
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
