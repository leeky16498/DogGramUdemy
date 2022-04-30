//
//  CommentViewModel.swift
//  DogGramUdemy
//
//  Created by Kyungyun Lee on 30/04/2022.
//

import Foundation

class CommentViewModel : ObservableObject {
    
    @Published var comments : [CommentModel] = [
        CommentModel(commentID: "11", userID: "Kyungyun.lee", username: "Kyungyun", content: "Hey kyungyun!", dateCreated: Date()),CommentModel(commentID: "11", userID: "Kyungyun.lee", username: "Kyungyun", content: "Hey kyungyun!", dateCreated: Date()),CommentModel(commentID: "11", userID: "Kyungyun.lee", username: "Kyungyun", content: "Hey kyungyun!", dateCreated: Date()),
    ]
    
}
