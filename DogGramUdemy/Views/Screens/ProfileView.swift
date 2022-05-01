//
//  ProfileView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var profileDisplayName : String
    @State var showSheet : Bool = false
    
    var profileUserID : String
    var isMyProfile : Bool
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ProfileHeaderView(profileDisplayName: $profileDisplayName)
            Divider()
            ImageGridView()

        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
            showSheet.toggle()
        }, label: {
            Image(systemName: "line.horizontal.3")
        })
                                    .accentColor(Color.colorPurple)
                                    .opacity(isMyProfile ? 1.0 : 0.0)
        )
        .sheet(isPresented: $showSheet) {
            SettingsView()
        }
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            ProfileView()
//        }
//    }
//}
