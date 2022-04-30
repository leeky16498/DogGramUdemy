//
//  ContentView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
            Text("SC3")
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            Text("SC4")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color.colorPurple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
