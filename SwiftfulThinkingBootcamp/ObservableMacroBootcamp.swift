//
//  ObservableMacroBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/28/25.
//

import SwiftUI

@Observable class ObservableViewModel {
    var title: String = "Some title"
}

struct ObservableMacroBootcamp: View {
    
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack {
            Button(viewModel.title){
                viewModel.title = "new title!"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeOtherView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    @Bindable var viewModel: ObservableViewModel
    var body: some View{
        Button(viewModel.title){
            viewModel.title = "jshdfgb"
        }
    }
}

struct SomeOtherView: View {
    @Environment(ObservableViewModel.self) var viewModel
    var body: some View{
        Button(viewModel.title){
            viewModel.title = "3rd view"
        }
    }
}

#Preview {
    ObservableMacroBootcamp()
}
