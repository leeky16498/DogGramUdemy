//
//  MessageView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct MessageView: View {
    
    var comment : CommentModel
    
    var body: some View {
        HStack {
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width : 40, height : 40, alignment: .center)
                .cornerRadius(20)
            
            VStack(alignment : .leading, spacing : 4) {
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Text(comment.content)
                    .padding(10)
                    .foregroundColor(.primary)
                    .background(.gray)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding(.all, 6)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(comment: CommentModel(commentID: "11", userID: "Kyungyun.lee", username: "Kyungyun", content: "Hey kyungyun!", dateCreated: Date()))
    }
}
