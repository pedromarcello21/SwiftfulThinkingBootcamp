//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/9/25.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIN: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.pink, Color.blue]),
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            //if user signed in
            //profile view
            //else
            //onboarding view
            
            if currentUserSignedIN {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else{
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

#Preview {
    IntroView()
}
