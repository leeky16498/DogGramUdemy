//
//  PostViewModel.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import Foundation

class PostViewModel : ObservableObject {
    
    @Published var postArray : [PostModel] = [
        PostModel(postID: "id", userID: "user", userName: "kyungyun", caption: "Hi my dogs! so cute!", dateCreated: Date(), likeCount: 102, likedByUser: true),
        PostModel(postID: "id", userID: "user", userName: "Siena", caption: "Hi my dogs! so cute!", dateCreated: Date(), likeCount: 102, likedByUser: true),PostModel(postID: "id", userID: "user", userName: "Mommy", caption: "Hi my dogs! so cute!", dateCreated: Date(), likeCount: 102, likedByUser: true),PostModel(postID: "id", userID: "user", userName: "kyungyun", caption: "Hi my dogs! so cute!", dateCreated: Date(), likeCount: 102, likedByUser: true)
    ]
    
    init() {
        getData()
    }
    
    func getData() {
        
    }
    
}
