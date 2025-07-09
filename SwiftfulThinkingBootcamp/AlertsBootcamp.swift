//
//  AlertsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/26/25.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
//    @State var alertMessage: String = ""
//    @State var alertTitle: String = ""
    @State var alertType: MyAlerts? = nil
    
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1"){
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2"){
                    alertType = .success
//                    alertTitle = "Success! 🤘"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"), message: Text("Try hitting button 2"))
        case .success:
            return Alert(title: Text("This was a success! 🤘"), message: Text("Going Green"),
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default: return Alert(title: Text("Error"))
        }
//        return Alert(
//            title: Text("This is the title!"),
//            message: Text("Here we describe the error"),
////                primaryButton: .destructive(Text("Delete")),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//                
//            }),
//            secondaryButton: .cancel()
//        )
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("Ok"))
//        )
    }
}

#Preview {
    AlertsBootcamp()
}
