//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 6/9/25.
//

//right click on variable and hit refactor to redefine throughout file

import SwiftUI

struct OnboardingView: View {
    
    //Onboarding states:
    /*
     0 - Welcome Screen
     1 - Add Name
     2 - Add Age
     3 - Gender
     */
    
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIN: Bool = false


    
    var body: some View {
        ZStack {
            // content
            ZStack{
                switch onboardingState {
                case 0: welcomeSection
                        .transition(transition)
                case 1: addNameSection
                        .transition(transition)
                case 2: addAgeSection
                        .transition(transition)
                case 3: addGenderSection
                        .transition(transition)
                default: RoundedRectangle(cornerRadius:25.0)
                        .foregroundColor(.green)
                }
            }
            //buttons
            VStack{
                Spacer()
                bottomButton
            }
            .padding(30)

        }
        .alert(isPresented: $showAlert, content:{
            return Alert(title: Text(alertTitle))
        })
    }
    
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}

// MARK: COMPONENTS
extension OnboardingView{
    
    private var bottomButton: some View{
        Text(onboardingState == 0 ? "Sign Up" :
                onboardingState == 3 ? "Finish" :
                "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(20)
//            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View{
        VStack(spacing:40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.white)
            Text("Connect w/ friends")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(Capsule(style: .continuous)
                    .frame(height: 3)
                    .offset(y: 5)
                    .foregroundColor(.white),
                         alignment: .bottom)
            Text("Connect with friends on this social platform :)")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View{
        VStack(spacing:40){
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .background(Color.white)
                .padding(.horizontal)
                .cornerRadius(20)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addAgeSection: some View{
        VStack(spacing:40){
            Spacer()
            Text("What's your Age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 30...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addGenderSection: some View{
        VStack(spacing:40){
            Spacer()
            Text("What's your Gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender, content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            }, label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .fontWeight(.semibold)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            })
            .pickerStyle(MenuPickerStyle())

            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    
}

// MARK: FUNCTIONS

extension OnboardingView{
    
    func handleNextButtonPressed(){
        
        //go to next section
        switch onboardingState{
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be atleast 3 characters long 😭")
                showAlert.toggle()
                return
        }
        case 3:
            guard gender.count > 1 else{
                showAlert(title: "Please select a gender before moving forward! 🫣")
                showAlert.toggle()
                return
            }
        default: break
        }
        if onboardingState == 3{
            signIn()
        }
        else {
            withAnimation(.spring()){
                onboardingState += 1
            }
        }
    }
    
    func signIn(){
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()){
            currentUserSignedIN = true
        }
        
        
    }
    
    func showAlert(title: String){
        alertTitle = title
    }
}
