//
//  PostView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct PostView: View {
    
    var post : PostModel
    
    var body: some View {
        VStack(alignment : .center, spacing: 0) {
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width : 30, height : 30, alignment: .center)
                    .cornerRadius(15)
                
                Text(post.userName)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.all, 6)
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            HStack(alignment : .center, spacing : 20) {
                Image(systemName: "heart.fill")
                    .font(.title3)
                
                
                NavigationLink(destination: {
                    CommentsView()
                }, label: {
                    Image(systemName: "bubble.middle.bottom")
                        .font(.title3)
                        .foregroundColor(.primary)
                })
                
                Image(systemName: "paperplane")
                    .font(.title3)
                Spacer()
            }
            .padding(.all, 6)
            
            if let caption = post.caption {
                HStack {
                    Text(caption)
                    Spacer()
                }
                .padding(.all, 6)
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: PostModel(postID: "id", userID: "user", userName: "kyungyun", caption: "Hi my dogs! so cute!", dateCreated: Date(), likeCount: 102, likedByUser: true))
            .previewLayout(.sizeThatFits)
    }
}
