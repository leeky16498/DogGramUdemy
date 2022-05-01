//
//  SignUpView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack(alignment : .center) {
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width : 100, height : 100)
            
            Text("You're not signed in! ☹️")
                .font(.largeTitle.bold())
                .padding()
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .foregroundColor(.colorPurple)
            
            Text("Click the button below to create an account and join the fun!")
                .font(.headline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)
            
            Button(action: {
                
            }, label: {
                Text("Sign In / Sign Up")
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth : .infinity)
                    .frame(height : 60)
                    .background(Color.colorPurple)
                    .cornerRadius(12)
                    .shadow(radius: 12)
                    .padding()
            })
            .accentColor(.colorYellow)
            Spacer()
        }
        .background(Color.colorYellow)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
