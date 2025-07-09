//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/29/25.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                //action to run when someone click on text field: onEditingChanged completion
                //action to run when someone clicks on the return button: onCommit completion
                TextField("Type something here...", text: $textFieldText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.black)
                    .font(.headline)
                Button(action: {
                    if textIsAppropriate(){
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                ForEach(dataArray, id: \.self) {
                    data in Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool{
        //check
        if textFieldText.count >= 3{
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
