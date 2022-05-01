//
//  ContentView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    var currentUserID : String?
    
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "book.fill")
                        Text("Feed")
                    }
                BrowseView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Browse")
                    }
                UploadView()
                    .tabItem {
                        Image(systemName: "square.and.arrow.up.fill")
                        Text("Upload")
                    }
                ZStack{
                    if currentUserID != nil {
                        ProfileView(profileDisplayName: "My profile", profileUserID: "id", isMyProfile: false)
                    } else {
                        SignUpView()
                    }
                    
                }
                
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
            }
            .accentColor(Color.colorPurple)
            .background(.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
