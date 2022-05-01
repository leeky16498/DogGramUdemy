//
//  ProfileHeaderView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 01/05/2022.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @Binding var profileDisplayName : String
    
    var body: some View {
        VStack(spacing : 20) {
            profileComponents
            
            HStack(spacing : 5) {
                VStack(spacing : 5) {
                    Text("5")
                        .font(.title2)
                        .fontWeight(.bold)
                    Capsule()
                        .fill(.gray)
                        .frame(width : 20, height : 2)
                    
                    Text("Posts")
                        .font(.callout)
                        .fontWeight(.medium)
                }
                .padding()
                
                VStack(spacing : 5) {
                    Text("20")
                        .font(.title2)
                        .fontWeight(.bold)
                    Capsule()
                        .fill(.gray)
                        .frame(width : 20, height : 2)
                    
                    Text("Likes")
                        .font(.callout)
                        .fontWeight(.medium)
                }
                .padding()
            }
            .padding()
        }
        .padding()
    }
    
    @ViewBuilder
    private var profileComponents : some View {
        Image("dog1")
            .resizable()
            .scaledToFill()
            .frame(width : 120, height : 120, alignment: .center)
            .cornerRadius(60)
        
        Text(profileDisplayName)
            .font(.largeTitle)
            .fontWeight(.bold)
        
        Text("This is the area where the user can add a bio to their profile!")
            .font(.body)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
    }
}

//struct ProfileHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHeaderView()
//    }
//}
