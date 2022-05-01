//
//  OnboardingPart2.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI

struct OnboardingPart2: View {
    
    @State var displayName : String = ""
    
    var body: some View {
        ZStack {
            Color.colorPurple
            VStack(spacing : 0) {
                Spacer()
                
                Text("What's your name?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.colorYellow)
                
                TextField("Add your name", text: $displayName)
                    .padding()
                    .frame(maxWidth : .infinity)
                    .frame(height : 60)
                    .background(.white)
                    .cornerRadius(12)
                    .padding()
                
                Button(action: {
                    
                }, label: {
                    Text("Finish : Add your profile picture!")
                        .padding()
                        .font(.headline)
                        .foregroundColor(Color.colorPurple)
                        .frame(maxWidth : .infinity)
                        .frame(height : 60)
                        .background(Color.colorYellow)
                        .cornerRadius(12)
                        .padding()
                })
                
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct OnboardingPart2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPart2()
    }
}
