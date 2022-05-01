//
//  SettingsEditTextView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI

struct SettingsEditTextView: View {
    
    @State private var text : String = ""
    var title : String
    var description : String
    var placeholder : String
    
    var body: some View {
        VStack {
            Text(description)
            TextField(placeholder, text: $text)
                .padding()
                .frame(height : 60)
                .frame(maxWidth : .infinity)
                .background(.gray)
                .font(.headline)
                .autocapitalization(.sentences)
                .cornerRadius(12)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("save".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.colorYellow)
                    .padding()
                    .frame(height : 60)
                    .frame(maxWidth : .infinity)
                    .background(Color.colorPurple)
                    .cornerRadius(12)
            })
        }
        .padding()
        .navigationTitle(title)
    }
}

//struct SettingsEditTextView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            SettingsEditTextView()
//        }
//    }
//}
