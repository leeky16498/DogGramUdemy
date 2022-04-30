//
//  CommentsView.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import SwiftUI

struct CommentsView: View {
    
    @State private var comment : String = ""
    @StateObject var vm = CommentViewModel()
    
    var body: some View {
        VStack{
            ScrollView {
                ForEach(vm.comments) {comment in
                    MessageView(comment: comment)
                }
            }
            
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width : 40, height : 40, alignment : .center)
                    .cornerRadius(20)
                
                TextField("Input comment!", text: $comment)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                })
                .accentColor(Color.colorPurple)
            }
            .padding(.all, 6)
        }
        .navigationBarTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    }
}
