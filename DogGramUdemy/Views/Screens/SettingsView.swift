//
//  SettingsView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            GroupBox(label: SettingsLabelView(labelText: "DogGram", labelImage: "dot.radiowaves.left.and.right")) {
                HStack(spacing : 10) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width : 80, height : 80, alignment: .center)
                        .cornerRadius(12)
                    
                    Text("DogGram is the no.1 app for posting pictures of your dog and sharing then across the world, we are a dog-loving community and we're happy to have you!")
                        .font(.footnote)
                }
            }
            .padding()
            
            GroupBox(label: SettingsLabelView(labelText: "Profile", labelImage: "person.fill")) {
                
                NavigationLink(destination: {
                    SettingsEditTextView(title: "Display Name", description: "You can edit your display name here. This is will be seen by other users on your profile and on your profile", placeholder: "Your display name here")
                }, label: {
                    SettingsRowView(leftIcon: "pencil", text: "Display Name", color: Color.colorPurple)
                })
                
                NavigationLink(destination: {
                    SettingsEditTextView(title: "Your Bio Display", description: "Your bio is a great place to let other users know a little about you. It will be shown on your profile only", placeholder: "Your bio here")
                }, label: {
                    SettingsRowView(leftIcon: "text.quote", text: "Bio", color: Color.colorPurple)
                })
                
                NavigationLink(destination: {
                    SettingsEditImageView(title : "Profile photo", description : "This is about profile photo")
                }, label: {
                    SettingsRowView(leftIcon: "photo", text: "Profile picture", color: Color.colorPurple)
                })
                
                
               
                SettingsRowView(leftIcon: "figure.walk", text: "Sign out", color: Color.colorPurple)
            }
            .padding()
            
            GroupBox(label: SettingsLabelView(labelText: "Applications", labelImage: "apps.iphone")) {
                
                Button(action: {
                    openURL(urlString: "http://www.google.com")
                }, label: {
                    SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.colorYellow)
                })
                
                Button(action: {
                    openURL(urlString: "http://www.yahoo.com")
                }, label: {
                    SettingsRowView(leftIcon: "folder.fill", text: "Terms and Conditions", color: Color.colorYellow)
                })
                
                Button(action: {
                    openURL(urlString: "http://www.bing.com")
                }, label: {
                    SettingsRowView(leftIcon: "globe", text: "DogGram's Website", color: Color.colorYellow)
                })
 
            }
            .padding()
        
            GroupBox {
                Text("DogGram was made with love.\n All Rights Reserved \n Cool Apps Inc. \n Copyright 2020 ")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth : .infinity)
            }
            .padding()
            .padding(.bottom, 80)
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(leading:
                                Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.title3)
        })
         .accentColor(.primary)
        )
    }
    
    private func openURL(urlString : String) {
        guard let url = URL(string: urlString) else {return}
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingsView()
        }
    }
}
