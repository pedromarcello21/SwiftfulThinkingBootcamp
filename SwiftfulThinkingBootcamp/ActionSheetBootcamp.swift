//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/29/25.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                //            Button("Click me for Action Sheet"){
                //                showActionSheet.toggle()
                //}
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(
                    action: {
//                        actionSheetOption = .isOtherPost
                        showActionSheet.toggle()
                    }, label: {
                        Image(systemName: "ellipsis")
                    })
                    .accentColor(.primary)
            }
            .padding(.horizontal)
            ZStack {
                Rectangle()
                    .aspectRatio(1.0, contentMode: .fit)
                Text(actionSheetOption == .isOtherPost ? "fine shyt" :"my dumb ahhh")
                    .foregroundColor(.white)
            }
            Button(
                action: {
                    actionSheetOption = (actionSheetOption == .isOtherPost) ?
                        .isMyPost : .isOtherPost
                }, label: {
                    Image(systemName: "person.fill")
                }
            )
            .padding(.vertical)
        }
            .actionSheet(
                isPresented: $showActionSheet,
                content: getActionSheet
                )
        }
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //add code to share
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){
            // add code to report this post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")){
            //code to delete post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do ?")
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message:nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, deleteButton, cancelButton]
            )
            
        }
        
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("Title!"),
//            message: Text("This is the message."),
//            buttons: [button1, button2, button3]
//        )
    }
    
    }



#Preview {
    ActionSheetBootcamp()
}
