//
//  OnboardingView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI
import UIKit

struct OnboardingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var showOnboardingPart2 : Bool = false
    
    var body: some View {
        VStack(spacing : 10) {
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width : 100, height :100, alignment : .center)
                .shadow(radius: 12)
            
            Text("Welcome to DogGram")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.colorPurple)
            
            Text("This is for sign in and sign up, welcome to dog heaven and please check the button what you want!")
                .multilineTextAlignment(.center)
                .padding()

            Button(action: {
                showOnboardingPart2.toggle()
            }, label: {
                    SignInwithAppleButtonCustom()
                    .frame(height : 60)
                    .frame(maxWidth : .infinity)
            })
            
            Button(action: {
                showOnboardingPart2.toggle()
            }, label: {
                HStack {
                    Image(systemName: "globe")
                    Text("Sign in with Google")
                }
                .frame(height : 60)
                .frame(maxWidth : .infinity)
                .background(Color(.init(red: 222/255, green: 82/255, blue: 70/255, alpha: 1.0)))
                .cornerRadius(9)
                .font(.system(size : 22, weight : .medium, design : .default))
            })
            .accentColor(Color.white)
        
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Continue as guest".uppercased())
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding()
            })
            .fullScreenCover(isPresented: $showOnboardingPart2) {
                OnboardingPart2()
            }
            
        }
        .padding(20)
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
